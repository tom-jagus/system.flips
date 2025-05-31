# 🧹 Folder Cleanup Rules – F.L.I.P.S.

This document defines the cleanup behaviors for each folder used in the F.L.I.P.S. system.  
While triage ensures messages are routed intentionally, cleanup ensures folders remain purposeful, minimal, and easy to navigate.

Each folder serves a unique behavioral role, and cleanup strategies are designed accordingly — some folders are cleared daily, others monthly, but none are intended for passive accumulation.

---

## 🗂️ `01_Action` – Task-Oriented Cleanup

This folder contains emails requiring a non-reply action, such as task execution, approvals, or manual processing.  
It is a **transient, high-priority workspace** — items here are meant to be short-lived and resolved quickly.

### ✅ Completion Criteria

An email in `01_Action` is considered complete when:

- The required task or action has been fully executed  
  **and**
- The outcome has been communicated to the relevant party (if needed)

At this point, the email should be **removed from the folder**.

### 🧹 Cleanup Behavior

- **Delete** the email once the action is complete — do not retain unless explicitly necessary
- Do **not** move completed messages into reference or archive folders by default
- Any follow-up will arrive as a **new email** and should be triaged independently

### 🚫 What Not to Do

- Do **not** allow messages to sit in this folder post-completion
- Do **not** keep vague or unclear requests here — if the next step isn't obvious, move the message to `02_Reply` and ask the sender to clarify their request
- Do **not** treat this folder as a task backlog — it’s a holding zone, not a task manager

### 🔄 Review Cadence

| Frequency             | Action                                                                  |
| --------------------- | ----------------------------------------------------------------------- |
| Start of Work Session | Review during working session startup routine, right after first triage |
| Daily (2x+)           | Process outstanding actions throughout day                              |
| Weekly Review         | Full sweep to ensure no stale tasks remain                              |

---

## 🗂️ `02_Reply` – Conversation Tracking Cleanup

This folder is used to track active conversations that require your response, are awaiting someone else's reply, or are worth monitoring.  
It acts as a **conversation holding zone** — temporary until the thread resolves or becomes irrelevant.

### ✅ Completion Criteria

An email in `02_Reply` is considered complete when:

- The conversation has reached a clear resolution  
  **or**
- You’ve sent multiple follow-ups without receiving a response (e.g., 3 bumps)  
  **or**
- The content has been moved to another folder (e.g., `90_Reference`, `97_Knowledge`) for future value

### 🧹 Cleanup Behavior

- **Remove** the message when:
  - Your reply resolved the issue and no further tracking is needed
  - You’ve followed up multiple times without response (consider the thread “dead”)
- **Retain** the message when:
  - You’re awaiting a reply
  - You’re monitoring the thread for outcome or insight
- **Re-triage** the message if:
  - The conversation shifts to a different purpose (e.g., becomes informative → move to `90_Reference` or `97_Knowledge`)

### 🚫 What Not to Do

- Do **not** keep threads that have clearly ended — remove them promptly
- Do **not** allow this folder to become a graveyard of ignored threads
- Do **not** use it to store reference content — move valuable info elsewhere

### 🔄 Review Cadence

| Frequency             | Action                                                                  |
| --------------------- | ----------------------------------------------------------------------- |
| Start of Work Session | Review during working session startup routine, right after first triage |
| Daily (2x+)           | Monitor for replies and send follow-ups if needed                       |
| Weekly Review         | Clean up unresolved or ghosted threads; decide to archive or abandon    |

---

## 🗂️ `03_Review` – Read & Understand Cleanup

This folder holds messages that require thoughtful reading, deeper comprehension, or non-urgent decision-making.  
It is a **quiet review zone** — meant for policy updates, informative articles, proposals, or anything needing dedicated attention.

### ✅ Completion Criteria

An email in `03_Review` is considered complete when:

- You’ve read and fully understood the content  
  **and**
- No further clarification is needed

### 🧹 Cleanup Behavior

- **Remove** the message if:
  - It was read and no longer holds value
- **Re-triage** the message if:
  - It includes useful information → move to `90_Reference` or `97_Knowledge`
  - It requires an action → move to `01_Action`
  - It requires a reply → move to `02_Reply`
- **Retain** the message if:
  - You haven’t read it yet
  - You read it but still don’t fully understand the context or content

### 🚫 What Not to Do

- Do **not** use this folder as passive storage for reading “someday”
- Do **not** let it grow unchecked — review must happen regularly
- Do **not** keep fully understood emails here — resolve or remove them

### 🔄 Review Cadence

| Frequency         | Action                                                               |
| ----------------- | -------------------------------------------------------------------- |
| End of Day        | Review messages when focus allows — ideal for winding down a workday |
| Midday (optional) | Optional review slot if time permits                                 |
| Weekly Review     | Clear any unreviewed or misunderstood emails; re-triage where needed |

---

## 🗂️ `04_Meetings` & `05_Events` – Time-Bound Cleanup

These folders hold scheduling-related messages — typically invites, agendas, travel confirmations, or booking details.

- `04_Meetings` is used for **scheduled calls, syncs, or internal discussions**
- `05_Events` is used for **external or in-person activities**, such as conferences, travel, or appointments

Both serve a temporary role and are cleared once their respective events conclude.

### ✅ Completion Criteria

A message is considered complete when:

- The scheduled meeting or event has taken place  
  **and**
- No further action or value is retained in the message

### 🧹 Cleanup Behavior

- **Remove** messages after the associated meeting or event concludes
- **Do not retain** outdated logistics, calendar invites, or reminders
- **Re-triage** only if:
  - The email contains genuinely valuable attachments or information → move to `99_Reference`

### 🚫 What Not to Do

- Do **not** use these folders for archival purposes
- Do **not** keep expired invites or past booking confirmations
- Do **not** let these folders silently accumulate — clear them consistently

### 🔄 Review Cadence

| Frequency     | Action                                                    |
| ------------- | --------------------------------------------------------- |
| Daily Review  | Check for same-day or upcoming meetings/events            |
| Weekly Review | Remove expired or fulfilled entries from the past 7+ days |

---

## 🗂️ `90_Reference` & `97_Knowledge` – Temporary Retention Cleanup

These folders are used for preserving valuable content temporarily — not indefinitely.  
While their purpose differs slightly, the cleanup behavior is the same: **keep the value, not the message**.

### 🔎 Folder Purpose

- **`90_Reference`** stores reusable assets: attachments, links, credentials, templates, etc.
- **`97_Knowledge`** stores reusable insights: long-form advice, instructions, decisions, workflows, or informal SOPs.

### ✅ Completion Criteria

A message is considered complete when:

- Its contents have been transferred to a structured, external system  
  (e.g., documentation hub, note-taking app, internal wiki, Obsidian)

### 🧹 Cleanup Behavior

- **Retain** only as long as the message contains uncaptured, high-value information
- **Migrate** content to your preferred documentation system as soon as possible
- **Delete** the original email after the transfer is complete or once its value expires

### 🚫 What Not to Do

- Do **not** allow these folders to grow unchecked over time
- Do **not** store information here that should live in a formal documentation system
- Do **not** retain both the message and the migrated content — choose one

### 🔄 Review Cadence

| Frequency       | Action                                                                     |
| --------------- | -------------------------------------------------------------------------- |
| Weekly Review   | Light pass: remove recently captured or low-value items                    |
| Monthly Cleanup | Deep pass: prune outdated content, broken links, and duplicate ideas/files |

---

## 🗂️ `98_Legacy` & `99_Archive` – Long-Term Retention Cleanup

These folders are explicitly used to preserve messages that are no longer active but still hold long-term value.  
They exist outside the core triage flow and are meant for **intentional retention**, not passive accumulation.

### 🔎 Folder Purpose

- **`98_Legacy`** holds project-based or professional history — such as completed initiatives or past correspondence.
- **`99_Archive`** stores personal or emotional messages — such as family emails, farewell notes, or memories.

### ✅ Completion Criteria

Messages may remain long-term, but should still be curated.  
Remove them when:

- They’ve lost relevance or sentimental value
- Their contents have been backed up or exported elsewhere

### 🧹 Cleanup Behavior

- Keep only what you consciously choose to preserve
- Remove outdated or redundant content
- Migrate elsewhere if another system is better suited for long-term retention

### 🚫 What Not to Do

- Do **not** treat these as “just in case” folders
- Do **not** mirror entire inboxes here
- Do **not** keep messages already stored elsewhere

### 🔄 Review Cadence

| Frequency              | Action                                        |
| ---------------------- | --------------------------------------------- |
| Quarterly (1–3 months) | Light review to confirm continued relevance   |
| Annual (optional)      | Deep archival review for digital decluttering |

---

## 🗂️ `00_Important` – High-Visibility Cleanup

This folder is reserved for messages that require elevated visibility due to urgency, impact, or strategic importance.  
It is a **short-to-mid-term spotlight zone**, not a long-term archive.

### 🔎 Folder Purpose

Use for messages that require awareness and easy access — such as escalations, executive communications, or risk coordination.

### ✅ Completion Criteria

Remove or re-triage when:

- The urgency window has passed
- The content is captured elsewhere
- Another folder fits better (e.g., `98_Legacy`, `99_Archive`, `90_Reference`)

### 🧹 Cleanup Behavior

- **Re-triage** when the reason for visibility no longer applies
- **Remove** if it’s no longer providing meaningful oversight
- Do **not** treat as passive storage

### 🚫 What Not to Do

- Do **not** bypass triage by “parking” messages here
- Do **not** retain outdated priorities
- Do **not** let it grow unnoticed

### 🔄 Review Cadence

| Frequency     | Action                                                     |
| ------------- | ---------------------------------------------------------- |
| Daily Check   | Confirm whether messages still merit elevated visibility   |
| Weekly Review | Re-triage or remove anything that’s aged out of importance |

---
