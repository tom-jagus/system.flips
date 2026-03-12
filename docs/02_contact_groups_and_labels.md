# Contact Groups and Labels

This document defines FLIPS sender groups and message labels.

Sender groups drive automation. Labels classify individual messages.

## Sender groups (automation input)

Use these contact groups in your email client:

| Group | Purpose | Default routing |
| --- | --- | --- |
| `Triage exception` | Designated senders that can stay in `Inbox` | keep in `Inbox` |
| `Events` | Event and meeting senders | move to `04 Events` |
| `Notifications` | System and automation senders | move to `05 Notifications` |
| `Newsletters` | Newsletter senders | move to `06 Newsletters` |

## Message labels (classification output)

Labels are singular and unnumbered.

### Routing labels

- `Unknown sender`
- `Event`
- `Notification`
- `Newsletter`
- `Reply later`

### Aside pile labels

- `Discussion`
- `Action context`
- `Attachment`

### Paper trail labels

- `Personal`
- `Financial`
- `Commitment`
- `Agreement`
- `Purchase`
- `Travel`
- `Official`

## Folder and label mapping

| Folder or subfolder | Label |
| --- | --- |
| `04 Events` | `Event` |
| `05 Notifications` | `Notification` |
| `06 Newsletters` | `Newsletter` |
| `01 Reply later` | `Reply later` |
| `02 Aside pile/01 discussions` | `Discussion` |
| `02 Aside pile/02 action context` | `Action context` |
| `02 Aside pile/99 attachments to keep` | `Attachment` |
| `03 Paper trail/01 personal` | `Personal` |
| `03 Paper trail/02 financial` | `Financial` |
| `03 Paper trail/03 commitments` | `Commitment` |
| `03 Paper trail/04 agreements` | `Agreement` |
| `03 Paper trail/05 purchases` | `Purchase` |
| `03 Paper trail/06 travel` | `Travel` |
| `03 Paper trail/99 official` | `Official` |

`Inbox` and `00 Awaiting triage` do not require dedicated labels.

## Unknown sender handling

`Unknown sender` is a temporary decision label, not a storage state.

When a message has `Unknown sender`:

1. Decide the sender now.
2. If legitimate, add the sender to contacts and assign the right sender group.
3. If unwanted, block the sender.
4. Remove `Unknown sender` label after the decision.
5. Re-triage the message.

Do not defer unknown sender decisions.

## Naming consistency rules

- Use plural folder names where natural (`Events`, `Notifications`, `Newsletters`).
- Use singular labels (`Event`, `Notification`, `Newsletter`).
- Keep label names aligned to folder intent.
