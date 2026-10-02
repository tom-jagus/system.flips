# F.L.I.P.S.

Version: **1.0.0**

**Fleeting Logic for Inbox Processing System** is a personal mailbox workflow:

> Automate attention routing; manually decide actions and retention.

Incoming messages go to an attention-appropriate intake queue. During dedicated
review sessions, messages are answered, moved to a manual workflow folder,
retained as records, or sent to Trash. Intake folders are temporary, not storage.

This repository documents the mailbox workflow and its Proton Mail Sieve filter,
[`sieve/minimal.sieve`](sieve/minimal.sieve). Contact groups configure incoming
routing and descriptive message labels. The filter has passed basic static checks;
**delivery behavior in Proton Mail is awaiting validation**.

## Get started

1. Read the [workflow guide](docs/workflow.md) for folder purposes, triage, and
   the review schedule.
2. Read the [routing policy](docs/routing-policy.md) before assigning routing
   tags to contacts or changing the filter.
3. Use the [Paper trail guide](docs/paper-trail.md) to decide which records to
   retain and where.

The guides use logical folder names. The filter uses `00 Awaiting triage`,
`04 Notifications`, and `05 Newsletters` as its exact folder destinations.
Contact groups, labels, and colors have been configured; verify their behavior
with the test cases in the routing policy before relying on the filter.

## Usage

- **Inbox:** approved senders whose messages deserve immediate attention.
- **Awaiting triage:** general intake, processed during scheduled email time.
- **Notifications / Newsletters:** predictable service traffic, reviewed weekly.
- **Reply later / Action context / Discussions / Events:** manually maintained
  active workflow folders.
- **Paper trail:** retained records, organized into six subfolders.

Three calendar-reserved, 20-minute sessions each day cover Inbox, Awaiting triage,
and Reply later. Empty intake queues are the ideal outcome, not a requirement to
continue working beyond those sessions. Unfinished messages wait for the next
session or day in their appropriate queue.

## Documentation

- [Workflow and review schedule](docs/workflow.md)
- [Incoming routing policy](docs/routing-policy.md)
- [Paper trail retention rules](docs/paper-trail.md)
- [Project definition](docs/project/definition.md)
- [Current progress and implementation gaps](docs/project/progress.md)

## License and copyright

See [LICENSE.md](LICENSE.md) for the existing CC BY 4.0 license and naming terms.

© Tom Jagus.
