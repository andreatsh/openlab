#!/bin/bash
#
# Simple script to backup data in a compress archive
#
# Hint: backup your files should be an important periodic operation,
#       you could use cron instead of manually launching this script
#       when (if) you remembber it.

DATEFMT="$(date +%Y%m%d-%R)"
BACKUPDIR="$HOME/backup"

[[ ! -d "$BACKUPDIR" ]] && mkdir "$BACKUPDIR"
tar cvzf "$BACKUPDIR/backup-$DATEFMT.tgz" -C "$HOME" data

