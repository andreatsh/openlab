#!/bin/bash

readonly LOGFILE="/tmp/$(basename "$0").log"

info()    { echo "[INFO]    $(date "+%F %T") $@" | tee -a "$LOGFILE" >&2 ; }
warning() { echo "[WARNING] $(date "+%F %T") $@" | tee -a "$LOGFILE" >&2 ; }
error()   { echo "[ERROR]   $(date "+%F %T") $@" | tee -a "$LOGFILE" >&2 ; }
debug()   { echo "[DEBUG]   $(date "+%F %T") $@" | tee -a "$LOGFILE" >&2 ; }
fatal()   { echo "[FATAL]   $(date "+%F %T") $@" | tee -a "$LOGFILE" >&2 ; exit 1 ; }

info    "This is an info message!"
warning "This is a warning message!"
error   "This is an error message!"
debug   "This is a verbose debug message!"
fatal   "Fatal message! Quit."

