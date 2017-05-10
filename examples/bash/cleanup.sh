#!/bin/bash

readonly TMPFILE="$(mktemp)"

cleanup() {
    # It's the right place to:
    #   - remove temporary files
    #   - restart services
    #   - ..

    rm -f "$TMPFILE"
    exit 0
}
trap cleanup EXIT SIGINT

#
# Your script goes here..
#

