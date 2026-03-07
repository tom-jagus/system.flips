# Mailbox folder design notes: `02 Paper trail` and `03 Aside pile`

## Purpose of this note

This document captures the final reasoning, decisions, and operating rules behind the `02 Paper trail` and `03 Aside pile` parts of the mailbox structure.

This is not about filtering logic or Sieve implementation.  
This is only about **why these folders exist**, **what goes into them**, **what does not**, and **how they should be used over time**.

The main mailbox principle behind this design is:

> Nothing should remain in Inbox or in `00 Awaiting triage` permanently.  
> Everything should be processed, deleted, or moved into a specific destination with a clear reason.

---

# Core design philosophy

The entire system is based on one simple distinction:

- `02 Paper trail` = mail worth keeping as a **record**
- `03 Aside pile` = mail worth keeping **for now**

That distinction matters because it prevents the mailbox from becoming a vague archive of random messages.

## In plain terms

### `02 Paper trail`

Use this for emails that may matter later because they provide:

- proof
- history
- commitments
- financial evidence
- official records
- decisions
- agreed terms

This is a **record-keeping area**.

### `03 Aside pile`

Use this for emails that are still useful, still active, or still needed temporarily, but are not permanent record material.

This is a **working shelf**, not an archive.

---

# Folder naming rule

Folders should reflect **why something is being kept**, not just that it exists.

Bad folder concepts are things like:

- `Misc`
- `Archive`
- `Important`
- `Stuff to keep`
- `Review later`

These names are vague and encourage parking emails without making decisions.

Good folder concepts are based on actual use:

- financial proof
- purchase history
- commitments
- active discussions
- temporary attachment holding

If a folder cannot be explained clearly in one sentence, it probably should not exist.

---

# Final structure: `02 Paper trail`

## Final subfolders

- `00 personal`
- `01 financial`
- `02 commitments`
- `03 agreements`
- `04 purchases`
- `05 travel`
- `06 official`

---

## `00 personal`

### Purpose

Store personal emails that directly matter on a personal level and may be worth keeping long-term.

### Examples

- sentimental messages
- meaningful family or personal correspondence
- rare or important personal confirmations
- personal matters that do not fit into financial, official, or travel categories

### Rule

This is not a generic fallback folder.  
It is for genuinely personal-value emails.

---

## `01 financial`

### Purpose

Store financial records and money-related confirmation emails.

### Examples

- invoices
- receipts
- payment confirmations
- refunds
- subscription notices
- bills
- account charges

### Rule

If the email helps prove that money moved, was requested, was paid, or was refunded, it belongs here.

---

## `02 commitments`

### Purpose

Store emails that contain promises, decisions, approvals, acknowledgements, or stated intentions that may need to be referenced later.

### Examples

- someone promising to deliver something
- someone approving a plan
- someone acknowledging responsibility
- emails that may later be useful for accountability
- written decisions that should not be forgotten

### Rule

If the value of the email is:

> "this person said they would do / approve / provide / accept something"

then it belongs here.

### Reasoning

This folder exists to preserve accountability and decision evidence.  
It is different from formal agreements.

---

## `03 agreements`

### Purpose

Store emails that define or confirm terms, arrangements, accepted conditions, or formal understandings.

### Examples

- agreed terms
- policy or arrangement confirmations
- contract-related mail
- service agreements
- formal account or service changes
- accepted conditions in written form

### Rule

If the email captures agreed structure or terms, rather than just someone’s promise or statement, it belongs here.

### Reasoning

This is deliberately separate from `Commitments`:

- `Commitments` = someone said they will do something
- `Agreements` = terms or arrangements were established

That split is useful and intentional.

---

## `04 purchases`

### Purpose

Store shopping and product-related history separate from broader financial records.

### Examples

- order confirmations
- shipping notifications
- delivery confirmations
- return confirmations
- warranty-related mail
- product support linked to a purchase

### Rule

Use this when the email is about **what was bought and the order lifecycle**, not just the payment itself.

### Reasoning

This was separated from `Financial` because shopping/order history and financial/accounting proof are related, but not identical.  
Keeping them separate makes later retrieval easier.

---

## `05 travel`

### Purpose

Store travel-related records that may need to be retrieved later.

### Examples

- booking confirmations
- accommodation confirmations
- tickets
- transport reservations
- travel itineraries
- travel insurance emails
- trip-related admin

### Rule

If the mail is part of planning, proving, or managing travel, it belongs here.

---

## `06 Official`

### Purpose

Store government, legal, administrative, compliance, banking identity, or otherwise formal official communication.

### Examples

- official notices
- tax-related communication
- identity/account verification notices
- government or public administration messages
- legal or compliance communication
- important institutional records

### Rule

If the message would be painful, risky, or expensive to lose later, this is the likely place for it.

---

# Why these `Paper trail` folders were chosen

These folders were selected because they map to **real retrieval scenarios**.

This structure is not based on abstract classification.  
It is based on practical future questions such as:

- “Where is the receipt?”
- “Did they promise that in writing?”
- “What exactly was agreed?”
- “Do I still have the purchase confirmation?”
- “Where is that travel booking?”
- “Was there an official message about this?”

The structure is intentionally narrow enough to stay usable and broad enough to prevent clutter.

---

# Final structure: `03 Aside pile`

## Final subfolders

- `00 Discussions`
- `01 Action context`
- `02 Attachments to keep`

---

## Why `Aside pile` exists

`Aside pile` exists for emails that should not remain in Inbox, but also should not yet be treated as permanent record material.

It is a temporary working area.

This is where emails go when they are still useful, still active, or still needed for context, but do not deserve long-term archival treatment.

---

## `00 Discussions`

### Purpose

Store ongoing conversations that are still active or likely to continue.

### Examples

- email threads in progress
- discussions where replies are still expected
- conversations that may need re-entry
- active exchanges that are not yet resolved

### Rule

If the value of the email is in the continuing thread itself, it belongs here.

### Reasoning

This folder exists because active discussions should not stay in Inbox forever, but they also should not be mixed into permanent records prematurely.

---

## `01 Action context`

### Purpose

Store emails that support an action already captured elsewhere, usually in a task system.

### Examples

- a task has already been created, but the email still provides context
- a reply needs to be sent once some external work is completed
- the email must remain easy to find while related work is in progress
- background material is still needed to complete the task

### Rule

This folder is **not** a task list.  
The task should exist elsewhere.

This folder only exists to hold the email context until the action is completed.

### Reasoning

A previous idea was to call this folder `Pending action`, but `Action context` was chosen instead because it is more accurate.

`Pending action` sounds like the folder itself is a planning or task-management tool.  
That is not the intention.

The actual model is:

- the task lives in the to-do system
- the email is just supporting context

This naming choice is intentional and important.

---

## `02 Attachments to keep`

### Purpose

Store emails where the main reason to keep the email is that the attachment still needs to be kept temporarily.

### Examples

- files that still need to be downloaded or moved to cloud storage
- emails whose attachment is still needed for current work or reference
- temporary holding place before extracting and storing the file elsewhere

### Rule

This folder is temporary by nature.  
It should not become permanent storage for documents.

### Reasoning

This folder exists because email often acts as a temporary transport layer for files.  
That is acceptable for a while, but long-term document storage should happen elsewhere when practical.

---

# Why other `Aside pile` ideas were rejected

Several candidate folders were considered and deliberately rejected.

## Rejected: `Waiting / follow-up`

### Why it was rejected

It overlaps too much with `Discussions`.

If something is still in motion and waiting for a reply or next step, then it usually already belongs in an ongoing discussion.

Creating a separate waiting folder would likely duplicate purpose without adding clarity.

---

## Rejected: `Reference for now`

### Why it was rejected

There was no strong recurring real-world example to justify it.

If a folder cannot be tied to a repeated actual use case, it should not exist.

This one was too vague and too easy to misuse as passive storage.

---

## Rejected: `Review later`

### Why it was rejected

It directly conflicts with the philosophy of the system.

The whole purpose of this mailbox structure is to process emails instead of parking them in vague holding areas.

`Review later` is usually just deferred decision-making with a nicer name.

It was rejected on purpose.

---

## Rejected: using `Aside pile` as a task manager

### Why it was rejected

Actions should be handled in a proper task system.

The mailbox should support execution, not become the execution system.

That is why `Action context` exists only as supporting context, not as an action queue.

---

# Operational rules

## Rule 1: Inbox and `00 Awaiting triage` are not storage

They are transient stages only.

Every email should eventually be:

- deleted
- moved to a specific folder
- or otherwise processed into a final place

---

## Rule 2: `Paper trail` is for records

If an email is being kept because it may matter later as proof, history, commitment, agreement, purchase evidence, travel proof, or official record, it belongs in `02 Paper trail`.

---

## Rule 3: `Aside pile` is temporary

If an email is being kept only because it is still useful now, but not because it is permanent record material, it belongs in `03 Aside pile`.

---

## Rule 4: `Aside pile` must eventually be cleared

Emails in `03 Aside pile` should eventually end up in one of these states:

- deleted
- moved into `02 Paper trail`
- fully resolved and no longer needed

If `Aside pile` becomes permanent storage, the system is being used incorrectly.

---

## Rule 5: folder creation must be justified by repeated behavior

A folder should only exist if it supports a recurring retrieval or processing pattern.

Do not create folders for hypothetical edge cases or vague “might be useful” thinking.

---

## Rule 6: names must reflect purpose

Folder names should explain the real reason an email is being kept.

Good names describe retrieval logic or retention logic.  
Bad names describe uncertainty.

---

# Final summary

## `02 Paper trail`

This is the long-term record area.

Use it for:

- personal-value messages
- financial proof
- purchase history
- commitments and accountability
- formal agreements
- travel records
- official/admin records

### Final subfolders

- `00 personal`
- `01 financial`
- `02 commitments`
- `03 agreements`
- `04 purchases`
- `05 travel`
- `06 official`

---

## `03 Aside pile`

This is the temporary working shelf.

Use it for:

- ongoing discussions
- email context supporting tasks managed elsewhere
- temporary attachment holding

### Final subfolders

- `00 Discussions`
- `01 Action context`
- `02 Attachments to keep`

---

# Final design intent

This system is meant to enforce the following behavior:

- process email deliberately
- avoid leaving mail in Inbox
- avoid vague archive folders
- separate long-term records from temporary working material
- keep only folders that correspond to real, repeated usage patterns
- make future retrieval easier by storing emails according to _why they matter_

The structure is intentionally selective rather than exhaustive.  
It is designed to stay understandable, maintainable, and useful over time.
