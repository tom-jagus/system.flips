# Incoming routing and classification

[`sieve/minimal.sieve`](../sieve/minimal.sieve) implements contact-based routing
and sender classification for Proton Mail. Contact groups and labels have been configured;
actual delivery, labeling, and unread behavior are awaiting mailbox validation.

## Contacts are the configuration interface

Maintain known sending addresses in contacts. Two independent kinds of group
membership control incoming processing:

- **Routing groups** choose the message's destination.
- **Descriptive groups** apply message labels without changing the destination.

Being a known contact does not automatically grant Inbox visibility. Contact
membership is a routing convenience, not sender authentication.

Changes to group membership affect future arrivals. They do not relabel or move
messages already delivered.

## Routing groups and precedence

Approved is the workflow concept: messages from this address deserve direct
inbox visibility. Its general contact-group name is **Direct inbox**.

| Contact group | Meaning | Destination used by the filter |
| --- | --- | --- |
| Direct inbox | Messages deserve immediate Inbox visibility | Inbox, through explicit `keep` |
| Notification | Informative service messages suitable for weekly review | `04 Notifications` |
| Newsletter | News, subscriptions, or promotional reading suitable for weekly review | `05 Newsletters` |
| No routing group | No special routing has been assigned | `00 Awaiting triage` |

Direct-inbox exceptions take precedence, followed by Notification, Newsletter,
and the general fallback. Unknown addresses and known addresses without routing
groups share that fallback.

Routing groups should be mutually exclusive per address. If Notification and
Newsletter accidentally overlap, Notification wins. Direct inbox wins over
either; correct accidental overlaps in contacts rather than relying on them.

Routing groups do not apply matching message labels. A label that merely mirrors
a folder is redundant and can become stale after manual movement.

Automatically filed messages are set unread before their folder delivery.
Direct-inbox delivery retains the normal incoming read state; the filter does
not continuously enforce unread status after arrival.

Do not automatically route incoming mail to Reply later, Action context,
Discussions, Events, or Paper trail. Those decisions remain manual. The filter
does not automatically delete messages.

## Descriptive groups and labels

Each descriptive contact group maps to an **identically named message label**.
All matching labels apply before routing, including for direct-inbox messages.
Groups can overlap when useful, though one primary category is usually enough.

These describe the sender's domain, not the individual message's next action or
retention destination. An Allegro promotion and receipt can both receive Shopping;
that does not make either a purchase record to retain automatically.

| Contact group and message label | Sender domain | Color |
| --- | --- | --- |
| Shopping | Marketplaces, retailers, and product sellers | Carrot |
| Finance | Banks, payment providers, and investment platforms | Cobalt |
| Services | Utilities, telecoms, insurance, and household services | Slateblue |
| Digital | Software, online tools, cloud services, and account platforms | Enzian |
| Social | Social networks, forums, and online communities | Pink |
| Food | Restaurants, groceries, and food delivery | Copper |
| Travel | Airlines, hotels, booking platforms, and transport | Ocean |
| Entertainment | Gaming, streaming, hobbies, and leisure | Purple |
| Official | Government and public authorities | Olive |
| Health | Healthcare providers, pharmacies, and medical services | Reef |

Choose the most specific useful category: a hotel is Travel rather than Services;
a streaming provider is Entertainment rather than Digital.

Descriptive destinations must exist in Proton as **labels**, not folders. The
filter uses Proton's `fileinto` behavior to apply these labels alongside the
chosen folder delivery. Verify that this produces the intended result.

## Unknown sender

Apply **Unknown sender** when the From address is absent from the contact list.
It is a message label, not a contact group, and does not alter routing.

It means "not currently in contacts," not "this person's first message." During
triage, add legitimate senders worth recognizing again and assign their groups.
Unwanted mail can go to Trash without adding the sender merely to clear the label.

Adding a contact does not remove Unknown sender from existing mail. Clear it
manually after processing if desired, or retain it as an arrival-time record.

## Color standard

Use the category colors above consistently for each descriptive contact group
and its matching message label. Colors are configured in Proton's interface;
the Sieve filter does not assign them.

| Routing group or special label | Color | Apply to |
| --- | --- | --- |
| Direct inbox | Strawberry | Contact group |
| Notification | Sahara | Contact group and Notifications folder |
| Newsletter | Soil | Contact group and Newsletters folder |
| Unknown sender | Cerise | Message label only |

Existing Notification or Newsletter message labels can use the same colors, but
the filter does not apply them. No color is prescribed here for general triage or
manual workflow folders.

## Scope and limitations

A sender may use one address for newsletters, receipts, security alerts, and
other traffic. Only assign a weekly-review route when that treatment is
appropriate for the address's expected messages.

Purchase/finance routing and distinguishing mixed-purpose messages using topics,
attachments, or other evidence are deferred refinements. Finance and Shopping
labels do not implement those refinements.

Use one active Sieve filter; no additional user filters are part of this setup.
Proton's spam handling still needs checking. Direct-inbox routing is not a promise
to bypass spam handling.

Existing mailbox contents require separate manual cleanup; this filter does not
reorganize historical messages automatically.

## Mailbox validation

Check representative messages against these expected outcomes:

| Case | Expected result |
| --- | --- |
| Direct inbox | Inbox |
| Direct inbox plus Shopping | Inbox with Shopping label |
| Direct inbox plus accidental Notification or Newsletter | Inbox |
| Notification plus Shopping | Notifications with Shopping label, unread |
| Newsletter plus Entertainment | Newsletters with Entertainment label, unread |
| Shopping plus Digital, no routing group | Awaiting triage with both labels, unread |
| Known address without any group | Awaiting triage, no Unknown sender label, unread |
| Unknown address | Awaiting triage with Unknown sender label, unread |
| Accidental Notification plus Newsletter | Notifications, unread; fix contact groups |

Also verify:

- Contact matching and capitalization of every group, label, and folder name.
- Labels do not remove intended Inbox delivery or create unintended delivery
  copies or folder destinations.
- Opening a filed message marks it read normally.
- Adding a sender to contacts changes classification for subsequent messages,
  without retroactively altering the earlier message.
- Proton accepts the required extensions and handles spam as intended.

The numbered folder names in the routing table must match the actual mailbox.
Use controlled messages before relying on the filter. Keep a recoverable copy of
the previously working configuration until validation is complete.
