# Mailbox workflow

## Principles

- Automate attention routing; manually decide actions and retention.
- Inbox and Awaiting triage are intake queues, not permanent storage.
- Decide what a message needs, not merely who sent it.
- Work within the reserved review time. Empty intake queues are an aspiration.
- Keep messages while they serve an active purpose or justify retention;
  otherwise move them to Trash.

## Folder purposes

| Folder | Purpose | Who places messages here? |
| --- | --- | --- |
| Inbox | Direct-attention intake from approved senders | Incoming routing |
| Awaiting triage | General intake that can wait for scheduled review | Incoming routing |
| Notifications | Informative messages from services in use | Incoming routing |
| Newsletters | News, subscriptions, and promotional reading | Incoming routing |
| Reply later | I owe a response but cannot reply now | Manual triage |
| Action context | I need to do something; the email supplies the context | Manual triage |
| Discussions | An active conversation or matter I need to track or keep on hand | Manual triage |
| Events | Upcoming meetings, invitations, reservations, and event logistics | Manual triage |
| Paper trail | Inactive records worth retaining for future reference | Manual triage |

Paper trail contains Personal, Financial, Agreements, Purchases, Travel, and
Official. See the [retention guide](paper-trail.md).

The former Aside pile is not a separate folder in this design. Active tracking
belongs in Discussions; retained records belong in Paper trail. Numeric prefixes
are optional presentation details, not workflow rules.

## Incoming attention

Keep an eye on Inbox during the day: messages routed there deserve immediate
attention by design. Approved does not mean already processed, authenticated, or
necessarily ready for a reply.

Awaiting triage can wait until the next dedicated email session. Notifications
and Newsletters have a separate weekly review. The exact automation policy is in
[routing-policy.md](routing-policy.md).

## Manual triage

During review, decide what the message needs:

1. **A reply:** reply now if time allows; otherwise move to Reply later.
2. **An action:** move to Action context when something needs doing.
3. **Active tracking:** move to Discussions when the conversation or matter
   remains relevant, including waiting for someone else's response.
4. **Upcoming logistics:** move invitations, bookings, and relevant details to
   Events.
5. **Retention only:** move an inactive record to the appropriate Paper trail
   subfolder.
6. **None of these:** move it to Trash.

These are decision prompts, not incoming filter rules. When multiple purposes
apply, file according to the next required step. A hotel booking needing a reply
belongs in Reply later first; once settled, its upcoming logistics belong in
Events. If a message requires both a reply and another action, choose the next
step and re-triage when that step is done.

Answering or moving a message out of intake does not necessarily complete the
underlying work. Reply later and Action context keep that work visible.

## Exit rule

When a folder's purpose no longer applies, re-triage the message:

- Still requires another step or active tracking: move to the appropriate active
  folder.
- No longer active but worth preserving: move to Paper trail.
- No longer needed: move to Trash.

For example, a completed event can leave Events for Paper trail/Travel if its
records remain useful, or for Trash if there is nothing worth retaining.

Trash is not a retention folder. This workflow does not prescribe permanent
purging or automatic deletion.

## Review schedule

| Folder | Cadence | Focus |
| --- | --- | --- |
| Inbox | Monitor during the day; review in each email session | Direct-attention messages and remaining triage |
| Awaiting triage | Each email session | Decide the next step or retention purpose |
| Reply later | Each email session | Send owed responses within the available time |
| Action context | Once a day, for day planning | Identify and plan required actions |
| Discussions | At least daily, and when relevant new mail arrives | Track outcomes, responses, and follow-ups |
| Notifications | Weekly | Read useful updates; re-triage or discard |
| Newsletters | Weekly | Read wanted material; re-triage or discard |
| Paper trail and subfolders | Monthly | Check retained relevance and remove unneeded records |
| Events | Cadence not yet agreed | Keep upcoming details usable and remove or retain completed-event records |

There are **three calendar-reserved email sessions per day, each 20 minutes**.
Each covers Inbox, Awaiting triage, and Reply later. There is no fixed allocation
of minutes between those folders.

When time runs out, leave unfinished messages in the appropriate queue for the
next session. If the day's sessions are insufficient, continue the next day.
Do not move unreviewed messages elsewhere merely to make intake look empty.

Monthly Paper trail review is a maintenance pass, not a requirement to delete
records merely because they are old.

Incoming replies follow the sender-routing policy. They do not automatically
return to Discussions or any other manual workflow folder; reconnect them to the
ongoing matter during review.
