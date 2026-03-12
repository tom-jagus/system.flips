# Triage Flow

This document defines how FLIPS users process email in focused blocks.

## Core operating model

- Process email in 3-4 fixed blocks per day.
- Run the first email block at the start of the workday.
- During a block, focus only on email.
- Outside blocks, return to focused work.

Ignoring meetings or calls during email blocks is a strong recommendation for discipline, not a hard requirement.

## Block sequence

Use this practical sequence during a standard block:

1. `Inbox`
2. `00 Awaiting triage`
3. `01 Reply later`
4. `02 Aside pile`
5. `04 Events`
6. `05 Notifications`
7. `06 Newsletters`

Use `03 Paper trail` for routing and retrieval, not for daily bulk processing.

You can adapt the middle order to your workload, but keep `Inbox` and `00 Awaiting triage` first.

## Personal schedule example

This is an example pattern, not a fixed rule:

- `08:00` - email processing (20 min)
- `11:50` - email processing (20 min)
- `15:40` - email processing (20 min)

Key rule: first email check starts the workday.

## Message decision flow

For each message:

1. Delete if no current or future value.
2. If immediate action is required, keep in `Inbox` until handled.
3. If reply is needed but requires time, move to `01 Reply later` and label `Reply later`.
4. If message is temporary working context, move to `02 Aside pile` subfolder.
5. If message is long-term record, move to `03 Paper trail` subfolder.
6. If already routed by automation to `04`, `05`, or `06`, process by folder intent.

## Unknown sender flow

When `Unknown sender` is present:

- decide sender now (add contact with group or block sender)
- remove `Unknown sender` label after decision
- re-triage the message

## Exit criteria and SLA guidance

| Location | Exit condition | SLA guidance |
| --- | --- | --- |
| `Inbox` | action completed or message routed | same day |
| `00 Awaiting triage` | message triaged to delete or destination | same day where possible |
| `01 Reply later` | reply sent and no further tracking needed | next available block |
| `02 Aside pile/01 discussions` | thread resolved or no reply after follow-ups | max 10 days, follow up every 2 days |
| `02 Aside pile/02 action context` | related atomic todo completed and follow-up sent | keep only while todo is active |
| `02 Aside pile/99 attachments to keep` | attachment moved to proper storage | remove email after transfer |
| `04 Events` | event has passed and no record value remains | clear after event |
| `05 Notifications` | no ongoing operational value | prune at 10-30 days |
| `06 Newsletters` | no ongoing reading value | prune at 10-30 days |

## Timebox discipline rules

- Start and end on time.
- Do not switch to non-email work during the block.
- Capture todos quickly, then return to triage.
- Keep todos atomic when using `02 action context`.

## Anti-patterns

- Using `01 Reply later` as a permanent queue.
- Leaving unresolved mail in `00 Awaiting triage` for multiple days.
- Treating `02 action context` as project management.
- Keeping stale threads in `01 discussions` past SLA.
