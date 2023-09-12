#!/bin/bash

# MySQL database credentials
DB_USER=""
DB_PASSWORD=""

# Backup directory
BACKUP_DIR=""

# Number of backups to retain
NUM_BACKUPS=3

# Get list of databases
DATABASES=$(mysql -u$DB_USER -p$DB_PASSWORD -e "SHOW DATABASES;" | grep "filter db name"

# Create backup directory if it doesn't exist
mkdir -p $BACKUP_DIR

# Loop through each database and create backups
for DB_NAME in $DATABASES; do
  # Backup file name with timestamp
  BACKUP_FILE="${BACKUP_DIR}/${DB_NAME}_$(date +%d-%m-%Y).sql"

  # Create the backup
  mysqldump -u$DB_USER -p$DB_PASSWORD $DB_NAME > $BACKUP_FILE

  # List all backups for the current database, sorted by date
  BACKUPS=$(ls -t ${BACKUP_DIR}/${DB_NAME}_*.sql)

  # Keep only the most recent backups (number specified by NUM_BACKUPS)
  COUNT=1
  for FILE in $BACKUPS; do
    if [ $COUNT -gt $NUM_BACKUPS ]; then
      rm $FILE
    fi
    COUNT=$((COUNT + 1))
  done
done

# Exit
exit 0
