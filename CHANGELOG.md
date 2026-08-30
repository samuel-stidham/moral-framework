# Changelog

All notable changes to this framework are documented in this file.

This project follows semantic versioning (MAJOR.MINOR.PATCH). See `CLAUDE.md` for the full versioning rules.

## [3.0.1] - 2026-08-29

Rearranged Principle 1 without changing what it says. The Declaration passage sat inside the enumeration of three foundational ideas, so eleven sentences separated "the first two" from "the third." It now has its own paragraph, and the enumeration closes in four sentences.

Also removed two sentences that described the previous policy. They said the boundary policy drew a floor from part of the Declaration. That was true of the ten-bar version, and it is not true of this one. The policy now uses the whole Declaration as its account of rights. The harm policy is unchanged and stays at 3.0.0. This is a PATCH revision.

## [3.0.0] - 2026-08-29

Replaced the harm policy with version 3.0.0, written in my own voice. The previous policy tried to define harm from scratch, and grew to ten institutional bars, a two-track structure, and five delegated terms. Five rounds of adversarial review kept finding defects at its seams. The new policy defines harm by reference instead. Harm is the violation of a person's human rights, and the Universal Declaration supplies the account of those rights. That removes the need to enumerate, define, and qualify.

The policy takes its structure from the Declaration of Independence. That text holds that people have unalienable rights, and that government exists to secure them. It uses Locke to explain where the state's authority comes from. That authority is a surrender of private enforcement. The rights themselves stay with the people. It uses the International Covenant on Civil and Political Rights for the protections that hold even during an emergency. National law is treated as where rights usually become enforceable. A law permitting a rights violation shows what a government allows, never what is right.

The policy is roughly a sixth the length of the one it replaces. It drops the definitions section, the two tracks, the ten-bar floor, the licensed response conditions, and the delegated terms. Added three references: Locke (1690), United Nations General Assembly (1966), and United States (1776). The Creative Commons license section carries over.

Principle 3 now describes the policy it adopts. It states the duty directly rather than deferring to a permissions structure. Nonmaleficence is gone from the framework, along with the W. D. Ross framing and the Skelton reference that supported it. Removing that vocabulary was the point of the refactor. The principle now says in plain language what the author means by not harming. Its capital punishment paragraph names the position plainly and states that it does not contradict the boundary. The policy sets a floor, and holding more than the minimum is no departure from it. Added the International Covenant reference to the framework, for Article 6(6), which forbids invoking the article to delay abolition. `CLAUDE.md` is now a symlink to `AGENTS.md`, which carried identical text. Both files gained a review standard and a rule against committing on the author's behalf. The writing style section now defers to the `forge:writing-style` skill, keeping only the two rules this repository adds. This is a MAJOR revision of the framework.

## [2.5.0] - 2026-08-11

Rebuilt the harm policy from scratch as version 2.0.0, a MAJOR revision of the policy. Five adversarial reviews of version 1.1.1 converged on thirteen defect clusters. The rebuild was developed in three staged drafts, each gated by a fresh adversarial reviewer before the next stage began. The policy now runs two declared tracks, one for violations and one for the response license. New definitions cover intent, careless risk, consent, threat, danger, source, and torture. The license carries four conditions, with necessity and proportionality separated and torture barred absolutely, in act and in threat. Consent is bearer-sovereign, with guardian and emergency clauses, and the floor takes Feinberg's anti-paternalist line. A bystander clause permits minor property harm in grave escapes, with repair owed. Added references: Feinberg (1986), Thomson (1991), and Frowe and Parry (2021). Principle 3's adoption sentence now names danger and the licensed response. Three external review rounds tightened threats, staging, repair allocation, resets, mitigation, torture's reach, and the guardian presumption before release. A plain-language summary and a judgment-and-law clause close the policy as a personal decision procedure. A good-faith rule makes deliberate exploitation of the text itself a violation. A final round made the brief the controlling spirit, deepened the law clause, and added an amendment rule. A last Gemini round yielded three targeted fixes on legal validity, consensual torture, and innocent-source repair. The law clause now carries a kinetic exception, so no statute removes a licensed response to grave live danger. The amendment rule's contradiction trigger no longer requires an ordinary case. This is a MINOR revision of the framework.

## [2.4.1] - 2026-08-11

Clarified the harm policy's threat definition and bumped the policy to 1.1.1. This entry carries no tag of its own. It shipped inside the v2.5.0 release. A threat is now plainly a display of serious intent through words, conduct, or both. The old wording said expression and listener, which skewed toward speech alone. The initiation definition already declared that the medium does not matter, so this aligns the two. This is a PATCH revision.

## [2.4.0] - 2026-08-11

Revised the harm policy to version 1.1.0. The definitions now include intent and careless risk. The threat definition follows the true threat doctrine, so hyperbole and jokes do not qualify. Initiation now requires intent, covers any medium, and includes fraud and engineered provocation. Defense keys on reasonable perception of a threat rather than the attacker's hidden state of mind. A new Dependencies section names the terms the adopting framework must define. Added two legal references, Watts v. United States and Counterman v. Colorado. The framework adopts the policy in whole, so the policy revision expands Principle 3. This is a MINOR revision.

## [2.3.0] - 2026-08-11

Added a standalone policy document, `policies/harm.md`, stating the framework's harm rule in full. The policy opens with definitions of harm, threat, initiation, and consent. Its rules bar initiating harm and careless risk, then set three conditions for justified defense. The defensive license ends when the threat ends and never transfers to grievance or group. Principle 3 now adopts the policy by reference. The policy carries its own References section, citing Feinberg, McMahan, and Skelton. It is written in a neutral voice so others can copy it without adopting the framework. Also removed a stale version number from the principles introduction, which still read 2.1.0. The document heading remains the single home for the current version. This is a MINOR revision.

## [2.2.0] - 2026-08-11

Replaced the Non-Aggression Principle in Principle 3 with nonmaleficence, the duty not to harm or injure others. The old label drew its line only at force and fraud, and carried a political lineage the framework had to disclaim. Nonmaleficence covers every kind of harm and matches the principle's own words, a refusal to inflict harm. Added the Skelton reference for W. D. Ross's prima facie duties. Removed the Van der Vossen reference with the NAP passage it supported. This is a MINOR revision.

## [2.1.0] - 2026-06-26

Added two ACM references and cited them in Principle 3. Added the ACM Code of Ethics and Professional Conduct (2018) for the "Avoid harm" boundary. Added the Software Engineering Code of Ethics and Professional Practice (1999) as the profession-specific standard the author follows as a software engineer. Moved the Van der Vossen citation to the Non-Aggression Principle sentence it supports. This is a MINOR revision.

## [2.0.3] - 2026-06-26

Applied writing style rules from `CLAUDE.md` across the entire document. Fixed citation formatting inconsistencies in the References section to match APA 7th edition. Reformatted the post-paragraph APA citations under each principle into clean parenthetical lines. No ideas, arguments, or references were added or removed. This is a patch revision only.

## [2.0.2] - Previous

Migrated from a GitHub Gist on the original account to a dedicated repository on the canonical account (samuel-stidham). Original gist: <https://gist.github.com/dqfan2012/b7cbb5235bfb0e3f20a2af3ffb0505e3>

Added `CLAUDE.md` with writing style, citation, revision, and versioning rules. Added `README.md` with repository structure, license, and AI attribution. Licensed under CC BY 4.0.

## [2.0.1] - Previous

Maintained in the original GitHub Gist. No detailed changelog was kept prior to migration.

## [2.0.0] - Previous

Rebuilt the framework from the ground up during PHL-260 at Southern New Hampshire University. Connected personal intuition to five formal ethical systems: Rights, Virtue, Utilitarian, Care Ethics, and Justice. Introduced the four guiding principles and the preamble.

## [1.0.0] - Previous

Original version. Guided mostly by instinct and personal experience. No formal ethical theory applied.
