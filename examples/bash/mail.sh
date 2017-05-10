#!/bin/bash
#
# Example: send a mail
#

sendlogmail(){
    local SUBJECT="A meaningful subject: Simulation crashed!"
    local DATEFMT="$(date -d "today" "+%Y %b %e, %R")"

    local RECIPIENT="$1"
    RECIPIENT="${RECIPIENT:-user@example}"

    local MAILBODY="Your simulation is crashed due to unknow errors!"

    echo -e "Subject: $SUBJECT - $DATEFMT \nTo: $RECIPIENT \n$MAILBODY" | \
    /usr/sbin/sendmail "$RECIPIENT"
}

sendlogmail "$1"

