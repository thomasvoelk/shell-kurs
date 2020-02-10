#! /bin/bash

# Directories und Files definieren
backupdir="/tmp/backup/"
logdir="/tmp/backuplog/"
current_date=$(date +%F)
log="$logdir/Backup-Log_$current_date"
errorlog="$logdir/Bakup-Fehler_$current_date"

# nötige Directories anlegen
mkdir -p "$backupdir"
mkdir -p "$logdir"

# backups anfertigen
cp -av ~ "$backupdir" >> "$log" 2>> "$errorlog"
cp -av /etc "$backupdir" >> "$log" 2>> "$errorlog"
