# Project definition

## Purpose

F.L.I.P.S. (Fleeting Logic for Inbox Processing System) provides a maintainable
personal mailbox workflow and, ultimately, a Proton Mail Sieve filter that
supports it.

> Automate attention routing; manually decide actions and retention.

The aim is to keep important messages visible, contain routine traffic, and make
email processing sustainable without requiring constant attention to every
incoming message.

## Agreed design

- Approved senders deserve direct Inbox visibility and take precedence over
  other routing categories.
- Notifications and Newsletters are routed to their own weekly-review folders.
- All other incoming messages go to Awaiting triage.
- Inbox and Awaiting triage are both intake queues. Inbox is monitored throughout
  the day for immediate attention; general triage is time-boxed.
- Three reserved 20-minute sessions daily cover Inbox, Awaiting triage, and Reply
  later. Empty intake queues are the ideal state, not a hard daily requirement.
- Reply later, Action context, Discussions, and Events are manually maintained
  workflow folders.
- Paper trail retains inactive records under Personal, Financial, Agreements,
  Purchases, Travel, and Official. Agreements includes commitments.
- Messages with no remaining workflow or retention purpose go to Trash.
- Known addresses use mutually exclusive contact routing categories. Independent
  descriptive contact groups apply identically named message labels; all matching
  descriptive labels can coexist without changing routing.
- Unknown sender identifies addresses absent from contacts and prompts contact
  maintenance during triage. It does not establish first-time correspondence.
- Contact membership by itself does not imply approval or authentication.
- Automatically filed messages arrive unread; there is one user Sieve filter.

The [workflow guide](../workflow.md), [routing policy](../routing-policy.md), and
[Paper trail guide](../paper-trail.md) own the detailed operational rules.

## Scope and non-goals

Current scope is this documented workflow and verification of its implemented
contact-based routing and classification in Proton Mail.

The first filter does not infer required replies, actions, conversation state,
event completion, or long-term retention. It does not automatically delete mail
or reorganize historical messages.

Purchase/finance routing and message-level exceptions for mixed-purpose sending
addresses are possible later refinements, not first-version requirements.

Universal Outlook/Gmail setup guides, public-release planning, and the original
closed, flat folder taxonomy are not requirements of this revision.

## Success criteria

- Test messages reach the destination specified by the routing policy, including
  Approved precedence and the unclassified fallback.
- Relevant category labels can be applied without unintended delivery changes.
- Folder meanings, review cadence, and exit rules are clear enough to use without
  repeatedly reconsidering the system.
- Incomplete triage stays visible for the next reserved session rather than being
  hidden to achieve an empty inbox.
- The deployed filter is verified against Proton behavior, documented, and
  recoverable through rollback.
