# FLIPS Rewrite Blueprint

This blueprint defines implementation order and required content for each file.

## Execution Order

1. `docs/00_system_overview.md`
2. `docs/01_folder_structure.md`
3. `docs/02_contact_groups_and_labels.md`
4. `docs/03_triage_flow.md`
5. `docs/04_cleanup_rules.md`
6. `docs/05_automation_filters.md`
7. `setup/` reference files
8. `filters/sieve/` reference files
9. `README.md`
10. `AGENTS.md`

## File Requirements

### `docs/00_system_overview.md`

- Explain what FLIPS is in plain language.
- Explain who it is for and what problems it solves.
- Explain why the system uses focused time blocks.
- Explain the keep-now vs keep-for-record distinction.
- Avoid provider-specific implementation details.

### `docs/01_folder_structure.md`

- Define all top-level folders in canonical order.
- Define subfolders for `02 Aside pile` and `03 Paper trail`.
- Explain folder intent and examples for each folder.
- Explain numbering rationale.
- Include short anti-pattern list (vague folders, unnumbered structure, inbox storage).

### `docs/02_contact_groups_and_labels.md`

- Define contact groups used by automation.
- Define label glossary.
- Explain folder vs label distinction.
- Add unknown sender handling flow.
- Add naming consistency examples (plural folders vs singular labels).

### `docs/03_triage_flow.md`

- Define default triage decision path.
- Include timebox workflow model.
- Include "first check at start of workday" as core rule.
- Include personal schedule as example only.
- Include folder exit criteria and SLA guidance.

### `docs/04_cleanup_rules.md`

- Define cleanup cadence by folder area.
- Define what must be cleared daily/weekly.
- Include retention guidance for paper trail folders.
- Include cleanup anti-patterns and correction actions.

### `docs/05_automation_filters.md`

- Provide provider-agnostic filter design.
- Add routing precedence matrix.
- Explain safe phrase scope and limitation.
- Explain default fallback routing to `00 Awaiting triage`.
- Add short Sieve section that links to root `filters/sieve/`.

### `setup/`

- Add `setup/README.md` describing setup guide purpose.
- Keep provider-specific setup docs separate from canonical behavior docs.

### `filters/sieve/`

- Add `filters/sieve/README.md` with usage notes.
- Add initial copy/paste Sieve file aligned to `docs/05_automation_filters.md`.

### `README.md`

- Keep concise overview and quick start order.
- Link to canonical docs in sequence.
- Link to `setup/` and `filters/sieve/`.

### `AGENTS.md`

- Reframe as documentation-first agent guide.
- Update authoritative file list to new docs layout.
- Lock canonical terms and precedence source of truth.
- Require consistency across docs and filter scripts.

## Quality Gates

- No contradictory folder names across files.
- No conflicting label names across files.
- Routing precedence appears only once as source of truth.
- Examples do not contradict canonical rules.
- README links only to files that exist.
