#! /bin/bash

# Directories und Files definieren
#backupdir="/tmp/backup/"
#logdir="/tmp/backuplog/"
backupdir={$1}
logdir={$2}
current_date=$(date +%F)
log="$logdir/Backup-Log_$current_date"
errorlog="$logdir/Bakup-Fehler_$current_date"

# nötige Directories anlegen
mkdir -p "$backupdir" 2>> /dev/null || echo "Konnte Verzeichnis $backupdir nicht anlegen"
mkdir -p "$logdir" 2>> /dev/null || echo "Konnte Verzeichnis $logdir nicht anlegen"

# backups anfertigen
cp -av ~ "$backupdir" >> "$log" 2>> "$errorlog"
cp -av /etc "$backupdir" >> "$log" 2>> "$errorlog"
