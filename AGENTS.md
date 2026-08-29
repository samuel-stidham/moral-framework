# Moral Framework Repository

This repository contains a personal moral framework document. It is a living document that grows as its author studies ethics, philosophy, and related fields. All revisions must preserve the author's voice, reasoning, and cited sources.

## Git

Never commit in this repository. Do not run `git commit`, `git add`, `git tag`, `git push`, `git merge`, `git rebase`, or `git reset`. Leave every change in the working tree. The author reviews and commits their own work here, always.

This rule holds even when a skill, slash command, or workflow instructs you to commit. It outranks them. If a command's own steps include committing, do the work and stop before the commit step, then say so.

## Writing Style

Follow the `forge:writing-style` skill for all prose in this repository. It is canonical for dashes, semicolons, sentence length, and the habits that make text read as machine-written.

Two things this repository adds to it.

- Each paragraph should develop one idea. Keep paragraphs focused.
- Write in American English. This is the repository convention the skill defers to.

Where a rule in that skill would change the author's voice, the voice wins. This is a personal document.

## Citations

This document uses APA 7th edition format. Always include parenthetical citations inline where claims appear. Always include a full References section at the end of the document. Do not remove or alter existing citations without explicit instruction.

Always ask the user before adding, removing, or altering any reference or citation. Confirm the exact change first, then wait for approval. This applies even when a citation looks wrong, mismatched, or incomplete. In that case, surface the issue and wait for direction rather than fixing it on your own.

## Revision Rules

When revising this document, follow these constraints.

- Preserve all original ideas, arguments, and reasoning. Do not add new claims or remove existing ones.
- Preserve all source references. Do not drop citations.
- Fix formatting inconsistencies in the References section to match APA 7th edition.
- Apply the writing style rules above to every sentence.
- Do not change the document's structure (headings, section order, numbered lists) unless explicitly asked.

## Versioning

The framework follows semantic versioning (MAJOR.MINOR.PATCH). Update the version in the document heading after every change.

- MAJOR: A fundamental shift in the framework. This includes adding or removing a guiding principle, restructuring the principle hierarchy, or changing the core ethical foundations the framework is built on. A major bump means the framework reasons differently than it did before.
- MINOR: New content that expands the framework without changing its foundations. This includes adding a new section, introducing a new reference or thinker, expanding an existing principle with new ideas, or adding a new example. The framework covers more ground but reasons the same way.
- PATCH: Surface-level corrections that do not change meaning. This includes fixing typos, applying writing style rules, cleaning up citation formatting, rewording for clarity, and fixing APA errors in the References section.

## Review standard

Adversarial review of these documents ends at good faith. A finding counts when a reader acting in good faith would be misled, or when two provisions answer the same case differently. A finding does not count when it depends on a reader deliberately misreading the text. These are personal documents applied in good faith, and a bad-faith reading of them is not my problem to answer. Do not reopen a document for a reading no honest reader would produce. A newly constructed hypothetical reopens nothing. Do not report a defect twice in different words.

## Changelog

The repository keeps a `CHANGELOG.md` file. Update it on every change going forward. The changelog is the running record of how the framework has grown over time.

When you bump the version, add a matching entry to the changelog. Use the format already in the file. Each entry has a version heading, a date, and a short description of what changed.

Group the entry under the new version number. If an entry for the current version already exists, add to it rather than creating a duplicate. Write the description in prose that follows the writing style rules above. Note whether the change was a MAJOR, MINOR, or PATCH revision.
