# Automation Filters

This document defines provider-agnostic FLIPS automation logic.

The goal is predictable routing with a clear fallback to `00 Awaiting triage`.

## What automation should do

- route repeatable sender categories automatically
- preserve immediate visibility for triage exceptions
- identify unknown senders early
- keep everything else in one triage queue

## Required sender groups

- `Events`
- `Notifications`
- `Newsletters`
- `Triage exception`

## Required labels

- `Unknown sender`
- `Event`
- `Notification`
- `Newsletter`

Other working and record labels are defined in `docs/02_contact_groups_and_labels.md`.

## Routing precedence matrix

Order matters. Apply rules top to bottom.

| Order | Condition | Action | Stop processing |
| --- | --- | --- | --- |
| 1 | Sender in `Events` group | move to `04 Events`, apply `Event` | yes |
| 2 | Sender in `Notifications` group | move to `05 Notifications`, apply `Notification` | yes |
| 3 | Sender in `Newsletters` group | move to `06 Newsletters`, apply `Newsletter` | yes |
| 4 | Subject contains user-defined safe phrase | keep in `Inbox` | yes |
| 5 | Sender not found in contacts | move to `00 Awaiting triage`, apply `Unknown sender` | yes |
| 6 | Sender in `Triage exception` group | keep in `Inbox` | yes |
| 7 | Any other message | move to `00 Awaiting triage` | yes |

## Safe phrase rule

Safe phrase is a user-defined subject token.

- It bypasses default triage routing only.
- It does not override Event, Notification, or Newsletter routing.
- Keep the phrase private and rotate it if needed.

## Unknown sender behavior

Unknown sender routing is intentional.

- Move to `00 Awaiting triage`.
- Apply `Unknown sender` label.
- During triage, decide sender immediately (add contact with group or block).
- Remove `Unknown sender` after decision.

## Universal setup checklist

1. Create top-level folders in canonical order.
2. Create sender groups.
3. Create labels.
4. Add routing rules in matrix order.
5. Send test emails for each branch.
6. Confirm default fallback routes to `00 Awaiting triage`.

## Sieve reference

If your provider supports Sieve, use scripts in:

- `filters/sieve/`

These scripts are implementation references. Canonical logic stays in this document.
