#!/bin/bash
DATE=$(date +%Y-%m-%d_%H-%M)
BACKUP_DIR="~/Documents/MK_Labs/Lab4_Database/backups"
mkdir -p $BACKUP_DIR
sudo docker exec lab4-database mariadb-dump -u root -pSuperSecretPassword123 student_records > $BACKUP_DIR/db_backup_$DATE.sql
echo "Backup completed: $BACKUP_DIR/db_backup_$DATE.sql"
