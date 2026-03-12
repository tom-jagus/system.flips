require ["fileinto", "extlists", "imap4flags"];

# FLIPS baseline routing for Proton-style Sieve.
# Update contact list paths and label names to match your account.

# 1) Events
if header :list "from" ":addrbook:personal?label=Events" {
    fileinto "04 Events";
    stop;
}

# 2) Notifications
if header :list "from" ":addrbook:personal?label=Notifications" {
    fileinto "05 Notifications";
    stop;
}

# 3) Newsletters
if header :list "from" ":addrbook:personal?label=Newsletters" {
    fileinto "06 Newsletters";
    stop;
}

# 4) Safe phrase bypass for triage routing only.
# Replace SAFE_PHRASE_TOKEN with your private phrase.
if header :contains "subject" ["SAFE_PHRASE_TOKEN"] {
    stop;
}

# 5) Unknown sender
if not header :list "from" ":addrbook:personal" {
    fileinto "00 Awaiting triage";
    stop;
}

# 6) Triage exception
if header :list "from" ":addrbook:personal?label=Triage exception" {
    stop;
}

# 7) Default fallback
fileinto "00 Awaiting triage";
removeflag "\\Seen";
stop;
