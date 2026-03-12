# FLIPS System Overview

FLIPS (Fleeting Logic for Inbox Processing System) is a practical email workflow for people who want fast decisions, less inbox noise, and consistent control of their day.

The system is designed for users who:

- receive enough email to get distracted by constant checking
- want to process email in focused blocks instead of all day
- need both temporary working folders and long-term records
- prefer clear behavior rules over complex folder sprawl

## Core idea

FLIPS treats email as a decision stream, not a storage pile.

- `Inbox` is for immediate attention and triage exceptions.
- `00 Awaiting triage` is the default landing zone for non-urgent mail.
- `01 Reply later` and `02 Aside pile` hold temporary work.
- `03 Paper trail` keeps long-term records.

This separates two different reasons for keeping email:

- keep for now (active context)
- keep as record (future evidence or history)

## What makes this system different

- timeboxed email blocks (3-4 sessions per day)
- sender-driven automation through contact groups
- strict routing intent with a clear default fallback
- cleanup rules that prevent temporary folders from becoming archives

## Workflow philosophy

- Start the day with an email block so planning is based on current reality.
- During email blocks, do only email work.
- Outside email blocks, do focused work and avoid reactive checking.

Ignoring meetings or calls during email blocks is a strong recommendation for discipline, not a hard rule.

## Automation philosophy

Automation should reduce noise, not hide important messages.

- Events, notifications, and newsletters can be routed by sender groups.
- Triage exceptions can stay in `Inbox`.
- Everything else should fall back to `00 Awaiting triage`.

FLIPS uses provider-agnostic filter logic so the method works across mailbox platforms.

## Decision quality and sender hygiene

The first contact from an unknown sender is a decision point.

- add the sender to contacts with the right label/group, or
- block the sender if unwanted.

Do not postpone this sender decision.

## Reading order

1. `docs/01_folder_structure.md`
2. `docs/02_contact_groups_and_labels.md`
3. `docs/03_triage_flow.md`
4. `docs/04_cleanup_rules.md`
5. `docs/05_automation_filters.md`
