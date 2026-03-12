# AGENTS.md

Guidance for agents working in `system.flips`.

## 1) Repository Profile

- This is a documentation-first project.
- There is no app runtime, package manifest, or CI pipeline in-repo.
- Canonical behavior is documented in Markdown under `docs/`.
- Provider setup details live in `setup/`.
- Sieve examples live in `filters/sieve/`.

## 2) Canonical Reading Order

Read these first before editing:

1. `README.md`
2. `docs/00_system_overview.md`
3. `docs/01_folder_structure.md`
4. `docs/02_contact_groups_and_labels.md`
5. `docs/03_triage_flow.md`
6. `docs/04_cleanup_rules.md`
7. `docs/05_automation_filters.md`

Use `project/rewrite_decisions.md` and `project/rewrite_blueprint.md` as planning references, not canonical policy.

## 3) Build, Lint, and Test Commands

No required build/lint/test tooling is configured.

### Build

- Canonical command: `N/A`

### Lint

- Canonical command: `N/A`

### Test

- Canonical command: `N/A`

### Run a Single Test

- Single-test command: `N/A`
- If a test framework is added later, document exact suite and single-test commands in this file and `README.md`.

### Optional local checks

- Markdown lint (if installed): `markdownlint "**/*.md"`
- Link check (if installed): `lychee "**/*.md"`

## 4) Working Agreement

- Keep edits scoped and consistent.
- Do not mix exploratory ideas into canonical docs.
- If canonical terms change, update all impacted docs in the same change.
- Keep `docs/05_automation_filters.md` as the source of truth for routing precedence.
- Keep `filters/sieve/` scripts aligned with canonical automation rules.

## 5) Documentation Style Rules

- Use plain language and decisive policy wording.
- Prefer short sections and tables for rule-heavy content.
- Use backticks for folder names, labels, groups, and file paths.
- Avoid contradictory examples.
- Use ASCII unless a file already requires Unicode symbols.

## 6) Canonical FLIPS Terms

### Top-level folders

- `Inbox`
- `00 Awaiting triage`
- `01 Reply later`
- `02 Aside pile`
- `03 Paper trail`
- `04 Events`
- `05 Notifications`
- `06 Newsletters`

### Canonical subfolders

`02 Aside pile`:

- `01 discussions`
- `02 action context`
- `99 attachments to keep`

`03 Paper trail`:

- `01 personal`
- `02 financial`
- `03 commitments`
- `04 agreements`
- `05 purchases`
- `06 travel`
- `99 official`

### Label naming

- Labels are singular and unnumbered.
- Folders are plural where practical.
- Keep folder/label semantics aligned.

## 7) Automation and Sender Decisions

- Contact groups are automation input.
- Labels are message classification output.
- `Unknown sender` is temporary and must be resolved during triage.
- Safe phrase bypass applies to default triage routing only.
- Safe phrase must not bypass `Events`, `Notifications`, or `Newsletters` routing.

## 8) When Adding or Changing Rules

If you add or change any of these, update all affected docs in one pass:

- folder names or order
- sender groups or labels
- routing precedence
- SLA or cleanup windows

Always run a consistency pass after edits.

## 9) Cursor and Copilot Rules

No repository-specific rule files were found at:

- `.cursor/rules/`
- `.cursorrules`
- `.github/copilot-instructions.md`

If any are added later, treat them as mandatory and merge with this guide.

## 10) Definition of Done

Before finishing, verify:

- canonical docs are internally consistent
- terminology is uniform across `docs/`, `setup/`, and `filters/sieve/`
- README links only to existing files
- no stale references remain to removed docs
