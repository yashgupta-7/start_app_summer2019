#!/bin/bash
rclone sync /var/www/backups startdemo:Backup_start/Databases/`date +20\%y-\%m-\%d` --backup-dir=startdemo:Backup_start_archives/Databases/`date +20\%y-\%m-\%d`
  