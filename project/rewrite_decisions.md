# FLIPS Rewrite Decisions

This file captures locked decisions for the documentation rewrite.

## Scope

- Treat this as a full canonical rewrite, not a legacy migration note.
- Do not include legacy-to-new comparison in user-facing docs.
- Ignore changelog and milestone updates during this rewrite pass.

## Canonical Top-Level Folders

1. `Inbox` (default mailbox view)
2. `00 Awaiting triage`
3. `01 Reply later`
4. `02 Aside pile`
5. `03 Paper trail`
6. `04 Events`
7. `05 Notifications`
8. `06 Newsletters`

## Canonical Subfolders

### `02 Aside pile`

- `01 discussions`
- `02 action context`
- `99 attachments to keep`

### `03 Paper trail`

- `01 personal`
- `02 financial`
- `03 commitments`
- `04 agreements`
- `05 purchases`
- `06 travel`
- `99 official`

## Naming Rules

- Number folders for deterministic ordering across clients.
- Use spaces in folder names (no underscores in canonical examples).
- Folder names are plural where practical.
- Labels are singular and unnumbered.
- Example style uses lowercase subfolders with numeric prefixes.

## Label and Sender Rules

- `Unknown sender` is a temporary classification label.
- First action for unknown sender: decide the sender now.
  - Add sender as contact with a proper label, or
  - Block sender immediately.
- Remove `Unknown sender` label after decision.
- Replace `Trusted` naming with `Triage exception` for inbox-safe senders.

## Automation Routing Intent

- Notification/Event/Newsletter group rules run first.
- Safe phrase bypass applies only to default triage routing.
- Safe phrase must not override Event/Notification/Newsletter routing.
- Default fallback for non-exception mail is `00 Awaiting triage`.

## Workflow and Focus Rules

- First email block happens at the beginning of the workday.
- Use 3-4 fixed email blocks per day.
- During email blocks, focus only on email work.
- Ignoring meetings/calls during blocks is a strong recommendation, not a hard rule.

## SLA and Cleanup Intent

- `01 discussions`: max 10 days, follow up every 2 days.
- `02 action context`: keep only while related atomic todo is active.
- `99 attachments to keep`: remove after attachment is stored elsewhere.
- `05 Notifications` and `06 Newsletters`: prune when older than 10-30 days.
