require ["fileinto", "extlists", "imap4flags"];

# Descriptive contact groups map to identically named Proton message labels.
# Independent checks allow all matching labels to apply without changing routing.
if header :list "from" ":addrbook:personal?label=Shopping" {
    fileinto "Shopping";
}

if header :list "from" ":addrbook:personal?label=Finance" {
    fileinto "Finance";
}

if header :list "from" ":addrbook:personal?label=Services" {
    fileinto "Services";
}

if header :list "from" ":addrbook:personal?label=Digital" {
    fileinto "Digital";
}

if header :list "from" ":addrbook:personal?label=Social" {
    fileinto "Social";
}

if header :list "from" ":addrbook:personal?label=Food" {
    fileinto "Food";
}

if header :list "from" ":addrbook:personal?label=Travel" {
    fileinto "Travel";
}

if header :list "from" ":addrbook:personal?label=Entertainment" {
    fileinto "Entertainment";
}

if header :list "from" ":addrbook:personal?label=Official" {
    fileinto "Official";
}

if header :list "from" ":addrbook:personal?label=Health" {
    fileinto "Health";
}

if header :list "from" ":addrbook:personal?label=Family" {
    fileinto "Family";
}

# Unknown means absent from contacts, not necessarily a first-time sender.
if not header :list "from" ":addrbook:personal" {
    fileinto "Unknown sender";
}

# Direct-inbox exceptions take precedence over all routine routing.
if anyof(
    header :list "from" ":addrbook:personal?label=Direct inbox",
    header :list "from" ":addrbook:personal?label=Family"
) {
    keep;
    stop;
}

# Automatically filed messages should arrive unread.
removeflag "\\Seen";

if header :list "from" ":addrbook:personal?label=Notification" {
    fileinto "04 Notifications";
    stop;
}

if header :list "from" ":addrbook:personal?label=Newsletter" {
    fileinto "05 Newsletters";
    stop;
}

# Known but unclassified addresses and unknown senders share this fallback.
fileinto "00 Awaiting triage";
stop;
