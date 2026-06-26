# Releasing

This guide explains how to tag a release in this repository. It covers the `Makefile` targets and the `scripts/tag-release.sh` script they wrap.

## Overview

Releases are tagged from the changelog. The script reads the latest entry in `CHANGELOG.md`. It then creates an annotated git tag named after that version. The tag message is the changelog notes for that version, so each tag records what changed.

Versioning here is framework-only. The version tracks the content of `framework.md`. Tooling changes do not bump the version. See `CLAUDE.md` for the full versioning rules.

## Prerequisites

You need `git`, `bash`, and `make` available on your system. Run every command from the repository root.

## How it works

The script finds the most recent `## [x.y.z]` heading in `CHANGELOG.md`. It reads that version number and the text below it. It then creates an annotated tag named `vX.Y.Z`. The message for that tag is the changelog entry for the version.

The script also runs a few safety checks. It warns if the `framework.md` heading version does not match the changelog top. It refuses to run when the tag already exists. It warns when the working tree has uncommitted changes. It asks before creating the tag and again before pushing.

## Using the Makefile

Run these targets from the repository root.

| Command | What it does |
| --- | --- |
| `make` or `make help` | Lists the available targets. |
| `make tag` | Creates the tag interactively. |
| `make tag-dry-run` | Previews the tag and message without changing anything. |
| `make tag-push` | Creates the tag and offers to push it to origin. |
| `make tag-yes` | Creates the tag without confirmation prompts. |
| `make release` | Creates and pushes the tag without prompts. |

## Using the script directly

You can also call the script without `make`. The flags can be combined, for example `--push --yes`.

| Command | What it does |
| --- | --- |
| `./scripts/tag-release.sh` | Creates the tag interactively. |
| `./scripts/tag-release.sh --dry-run` | Previews the tag and message only. |
| `./scripts/tag-release.sh --push` | Creates the tag and offers to push it. |
| `./scripts/tag-release.sh --yes` | Skips the confirmation prompts. |

## Typical release flow

The tag points at the current commit, so commit and push your changes first.

1. Update `framework.md` and add a matching entry to `CHANGELOG.md`.
2. Commit and push those changes.
3. Run `make tag-push` to create the tag and push it.
4. Confirm the prompts, or use `make release` to skip them.
