```
require ["fileinto", "extlists", "imap4flags"];

# Myself = Proton-owned self addresses OR custom Myself contact group
if anyof(
    header :list "from" ":addrbook:myself",
    header :list "from" ":addrbook:personal?label=Myself"
) {
    fileinto "Myself";
    stop;
}

# Classification labels only
if header :list "from" ":addrbook:personal?label=Disliked" {
    fileinto "Disliked";
}

if header :list "from" ":addrbook:personal?label=Family" {
    fileinto "Family";
}

if header :list "from" ":addrbook:personal?label=Client" {
    fileinto "Client";
}

if header :list "from" ":addrbook:personal?label=Co-worker" {
    fileinto "Co-worker";
}

if header :list "from" ":addrbook:personal?label=Former colleague" {
    fileinto "Former colleague";
}

# VIP = label and keep in Inbox
if header :list "from" ":addrbook:personal?label=VIP" {
    fileinto "VIP";
    stop;
}

# Calendar / booking / event mail
if anyof(
    header :contains "subject" [
        "calendar",
        "event",
        "invitation",
        "invite",
        "booking",
        "reservation",
        "appointment",
        "meeting"
    ],
    address :domain :is "from" [
        "calendly.com",
        "google.com",
        "microsoft.com",
        "outlook.com"
    ]
) {
    fileinto "Event";
    fileinto "06 Events";
    stop;
}

# Notification = route away and stop
if header :list "from" ":addrbook:personal?label=Notification" {
    fileinto "04 Notification";
    stop;
}

# Newsletter = route away and stop
if header :list "from" ":addrbook:personal?label=Newsletter" {
    fileinto "05 Newsletter";
    stop;
}

# Unknown sender = not in contacts at all
if not header :list "from" ":addrbook:personal" {
    fileinto "Unknown sender";
}

# Trusted or safe phrase = keep in Inbox
if anyof(
    header :list "from" ":addrbook:personal?label=Trusted",
    header :contains "subject" [
     "bright.future.ahead"
 ]
) {
    stop;
}

# Everything else -> triage and keep unread
fileinto "00 Awaiting triage";
removeflag "\\Seen";
stop;
```
