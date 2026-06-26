#!/usr/bin/env bash
#
# tag-release.sh
#
# Create an annotated git tag from the latest CHANGELOG.md entry.
#
# It reads the top "## [x.y.z] - date" entry, uses that section's body as the
# tag message, and creates a tag named "vX.Y.Z". By default it asks before
# creating the tag and again before pushing.
#
# Usage:
#   ./scripts/tag-release.sh            Create the tag interactively.
#   ./scripts/tag-release.sh --push     Also offer to push to origin.
#   ./scripts/tag-release.sh --yes      Skip the confirmation prompts.
#   ./scripts/tag-release.sh --dry-run  Show what would happen, change nothing.
#
# Flags can be combined, for example: --push --yes

set -euo pipefail

CHANGELOG="CHANGELOG.md"
FRAMEWORK="framework.md"

PUSH=false
ASSUME_YES=false
DRY_RUN=false

for arg in "$@"; do
  case "$arg" in
    --push) PUSH=true ;;
    --yes|-y) ASSUME_YES=true ;;
    --dry-run) DRY_RUN=true ;;
    *) echo "Unknown option: $arg" >&2; exit 2 ;;
  esac
done

# Run from the repository root so the relative paths resolve.
cd "$(git rev-parse --show-toplevel)"

if [ ! -f "$CHANGELOG" ]; then
  echo "Error: $CHANGELOG not found." >&2
  exit 1
fi

# Find the most recent versioned entry, e.g. "## [2.1.0] - 2026-06-26".
latest_line=$(grep -m1 -E '^## \[[0-9]+\.[0-9]+\.[0-9]+\]' "$CHANGELOG" || true)
if [ -z "$latest_line" ]; then
  echo "Error: no versioned entry found in $CHANGELOG." >&2
  exit 1
fi

version=$(printf '%s\n' "$latest_line" | sed -E 's/^## \[([0-9]+\.[0-9]+\.[0-9]+)\].*/\1/')
tag="v$version"

# Pull the body of that entry: everything between its heading and the next one.
notes=$(awk -v ver="$version" '
  index($0, "## [" ver "]") == 1 { capture = 1; next }
  capture && /^## \[/ { exit }
  capture { print }
' "$CHANGELOG")

# Drop leading blank lines so the tag message starts at the first real line.
notes=$(printf '%s\n' "$notes" | sed -e '/./,$!d')

if [ -z "$(printf '%s' "$notes" | tr -d '[:space:]')" ]; then
  echo "Error: changelog entry for $version has no body text." >&2
  exit 1
fi

# Sanity check: the framework heading version should match the changelog.
fw_version=$(grep -m1 -E '^#.*Version [0-9]+\.[0-9]+\.[0-9]+' "$FRAMEWORK" \
  | sed -E 's/.*Version ([0-9]+\.[0-9]+\.[0-9]+).*/\1/' || true)
if [ -n "$fw_version" ] && [ "$fw_version" != "$version" ]; then
  echo "Warning: $FRAMEWORK is version $fw_version but the changelog top is $version." >&2
fi

# Refuse to reuse an existing tag.
if git rev-parse -q --verify "refs/tags/$tag" >/dev/null; then
  echo "Error: tag $tag already exists." >&2
  exit 1
fi

# Warn if the working tree is dirty, since the tag points at HEAD.
if [ -n "$(git status --porcelain)" ]; then
  echo "Warning: working tree has uncommitted changes. The tag will point at HEAD, not those changes." >&2
fi

echo "Latest changelog version: $version"
echo "Tag to create: $tag (pointing at $(git rev-parse --short HEAD))"
echo
echo "Tag message:"
echo "--------------------------------------------------"
printf '%s\n\n%s\n' "$tag" "$notes"
echo "--------------------------------------------------"
echo

if [ "$DRY_RUN" = true ]; then
  echo "Dry run: no tag created."
  exit 0
fi

confirm() {
  # confirm "question" -> returns 0 for yes, 1 for no. Defaults to no.
  if [ "$ASSUME_YES" = true ]; then
    return 0
  fi
  printf '%s [y/N] ' "$1"
  read -r reply
  case "$reply" in
    [yY]|[yY][eE][sS]) return 0 ;;
    *) return 1 ;;
  esac
}

if ! confirm "Create tag $tag?"; then
  echo "Aborted. No tag created."
  exit 0
fi

# Build the annotated tag from the heading line plus the entry body.
printf '%s\n\n%s\n' "$tag" "$notes" | git tag -a "$tag" -F -
echo "Created annotated tag $tag."

if [ "$PUSH" = true ]; then
  if confirm "Push $tag to origin?"; then
    git push origin "$tag"
    echo "Pushed $tag to origin."
  else
    echo "Tag created locally but not pushed. Push later with: git push origin $tag"
  fi
else
  echo "Push later with: git push origin $tag"
fi
