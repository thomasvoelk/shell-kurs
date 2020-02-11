#! /bin/bash
 
# Directories und Files definieren
backupdir="/tmp/backup/"
logdir="/tmp/backuplog/"
directories=$(echo '/etc' '/usr/local/bin' '/home' '/var/log' '/root')
current_date=$(date +%F)
log="$logdir/Backup-Log_$current_date"
errorlog="$logdir/Bakup-Fehler_$current_date"

# nötige Directories anlegen
mkdir -p "$backupdir" 2>> /dev/null || echo "Konnte Verzeichnis $backupdir nicht anlegen"
mkdir -p "$logdir" 2>> /dev/null || echo "Konnte Verzeichnis $logdir nicht anlegen"

# backups anfertigen
for dir in ${directories}; do
	cp -av ${dir} "$backupdir" >> "$log" 2>> "$errorlog"
done
