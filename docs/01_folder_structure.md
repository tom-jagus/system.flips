# Folder Structure

This document defines the canonical FLIPS folder layout.

The structure is designed to separate:

- immediate attention (`Inbox`)
- deferred triage (`00 Awaiting triage`)
- temporary working mail (`01 Reply later`, `02 Aside pile`)
- long-term records (`03 Paper trail`)
- automated bulk channels (`04 Events`, `05 Notifications`, `06 Newsletters`)

## Top-level folders

Use this order in every mailbox:

| Folder | Purpose | Retention model |
| --- | --- | --- |
| `Inbox` | Immediate-attention email and triage exceptions | short-lived |
| `00 Awaiting triage` | Default queue for non-urgent messages | short-lived |
| `01 Reply later` | Messages that need a thoughtful reply, not now | temporary |
| `02 Aside pile` | Temporary workspace for active email context | temporary |
| `03 Paper trail` | Long-term records and evidence | long-term |
| `04 Events` | Event messages routed by event sender group | temporary |
| `05 Notifications` | Automated/system notifications routed by sender group | temporary |
| `06 Newsletters` | Newsletter content routed by sender group | temporary |

## `02 Aside pile` subfolders

| Subfolder | Purpose | Typical examples |
| --- | --- | --- |
| `01 discussions` | Ongoing back-and-forth threads | waiting replies, active conversations |
| `02 action context` | Supporting context for active atomic todos | details needed to complete and then reply |
| `99 attachments to keep` | Temporary attachment holding area | files not yet moved to proper storage |

## `03 Paper trail` subfolders

| Subfolder | Purpose | Typical examples |
| --- | --- | --- |
| `01 personal` | Personal-value records worth keeping | meaningful personal correspondence |
| `02 financial` | Money movement evidence | invoices, receipts, refunds |
| `03 commitments` | Promises, acknowledgements, accountability | written commitments and approvals |
| `04 agreements` | Terms and formal arrangements | accepted conditions, service terms |
| `05 purchases` | Order lifecycle history | confirmations, shipping, returns |
| `06 travel` | Travel records | bookings, tickets, itineraries |
| `99 official` | Formal institutional records | tax, legal, compliance, identity notices |

## Naming guidance

- Keep managed folders numbered from `00` upward so ordering is stable across clients.
- Use spaces in names for readability.
- Use plural top-level names where natural.
- Use singular labels (defined in `docs/02_contact_groups_and_labels.md`).

The exact capitalization style is flexible. Keep naming internally consistent.

## Design rules

- Folder names should describe why email is kept.
- Avoid vague storage buckets.
- Keep only folders with repeated, real behavior.
- If a folder cannot be explained in one sentence, simplify it.

## Anti-patterns

- Leaving email in `Inbox` or `00 Awaiting triage` as storage.
- Creating broad buckets like `Misc`, `Archive`, or `Review later`.
- Building topic-heavy folder trees that duplicate search.
- Treating `02 Aside pile` as a long-term archive.
