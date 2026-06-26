# Makefile for the moral framework repository.
#
# These targets wrap scripts/tag-release.sh, which creates an annotated git tag
# from the latest CHANGELOG.md entry. Run them from the repository root.

.DEFAULT_GOAL := help

.PHONY: help tag tag-dry-run tag-push tag-yes release

help: ## Show this help.
	@echo "Release tagging targets:"
	@echo "  make tag          Create the tag from the latest CHANGELOG entry (interactive)."
	@echo "  make tag-dry-run  Preview the tag and message without creating anything."
	@echo "  make tag-push     Create the tag and offer to push it to origin."
	@echo "  make tag-yes      Create the tag, skipping confirmation prompts."
	@echo "  make release      Create and push the tag with no prompts (--push --yes)."

tag: ## Create the tag interactively.
	@./scripts/tag-release.sh

tag-dry-run: ## Preview only, change nothing.
	@./scripts/tag-release.sh --dry-run

tag-push: ## Create the tag and offer to push it.
	@./scripts/tag-release.sh --push

tag-yes: ## Create the tag without prompts.
	@./scripts/tag-release.sh --yes

release: ## Create and push the tag without prompts.
	@./scripts/tag-release.sh --push --yes
