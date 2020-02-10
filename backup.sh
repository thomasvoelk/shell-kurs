#! /bin/bash

# Directories und Files definieren
backupdir="/tmp/backup/"
logdir="/tmp/backuplog/"
log="Backup-Log"
errorlog="Bakup-Fehler"

# nötige Directories anlegen
mkdir -p "$backupdir"
mkdir -p "$logdir"

# backups anfertigen
cp -av ~ "$backupdir" >> "$logdir/$log" 2>> "$logdir/$errorlog"
cp -av /etc "$backupdir" >> "$logdir/$log" 2>> "$logdir/$errorlog"
