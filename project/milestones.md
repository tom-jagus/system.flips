# Project Milestones - FLIPS

This document tracks implementation progress for the current FLIPS documentation model.

## Milestone overview

| # | Milestone | Status | Started | Completed |
| --- | --- | --- | --- | --- |
| 1 | Repository foundation | Completed | 2025-05-25 | 2025-05-25 |
| 2 | Canonical documentation rewrite | Completed | 2026-03-12 | 2026-03-13 |
| 3 | Provider setup guides | Pending | - | - |
| 4 | Automation script hardening | Pending | - | - |
| 5 | Operational validation and release prep | Pending | - | - |

## Milestone 1 - Repository foundation (Completed)

- [x] Initialize repository structure.
- [x] Add base project files (`README.md`, `LICENSE.md`, `.gitignore`, `CHANGELOG.md`).
- [x] Add initial project planning docs in `project/`.

## Milestone 2 - Canonical documentation rewrite (Completed)

- [x] Add high-level system intro in `docs/00_system_overview.md`.
- [x] Rewrite folder architecture in `docs/01_folder_structure.md`.
- [x] Add sender groups and labels in `docs/02_contact_groups_and_labels.md`.
- [x] Rewrite triage flow and SLA guidance in `docs/03_triage_flow.md`.
- [x] Rewrite cleanup model in `docs/04_cleanup_rules.md`.
- [x] Add automation precedence and filter logic in `docs/05_automation_filters.md`.
- [x] Add setup scaffold in `setup/README.md`.
- [x] Add Sieve reference scaffold in `filters/sieve/README.md` and `filters/sieve/proton_base.sieve`.
- [x] Align top-level `README.md` with canonical docs.
- [x] Align agent guidance in `AGENTS.md`.

## Milestone 3 - Provider setup guides (Pending)

- [ ] Create `setup/proton.md` with step-by-step mapping to canonical rules.
- [ ] Create `setup/gmail.md` with labels, filters, and ordering setup.
- [ ] Create `setup/outlook.md` with categories, rules, and folder ordering setup.
- [ ] Add verification checklists to each setup guide.

## Milestone 4 - Automation script hardening (Pending)

- [ ] Validate `filters/sieve/proton_base.sieve` against real mailbox behavior.
- [ ] Add tested Sieve variants if needed (strict mode, minimal mode).
- [ ] Document safe phrase management and periodic rotation guidance.
- [ ] Add troubleshooting notes for precedence conflicts.

## Milestone 5 - Operational validation and release prep (Pending)

- [ ] Run a full consistency pass across `docs/`, `setup/`, and `filters/sieve/`.
- [ ] Resolve wording drift between policy docs and setup guides.
- [ ] Add release notes entry in `CHANGELOG.md`.
- [ ] Tag release when documentation and setup guides are stable.
