#!/bin/bash
#write out current crontab
crontab -l > mycron
#echo new cron into cron file
echo "* $4 * * * mysqldump -u $1  -p$2 start > /var/www/backups/start/start`date +20\%y-\%m-\%d`.sql" >> mycron
echo "* $4 * * * rclone sync /var/www/backups/start $3:Backup_start/Databases/start/`date +20\%y-\%m-\%d` --backup-dir=$3:Backup_start_archives/Databases/`date +20\%y-\%m-\%d`" >> mycron
echo "* $4 * * * rclone sync /var/www/html $3:Backup_start/Code/start/`date +20\%y-\%m-\%d` --backup-dir=$3:Backup_start_archives/Code/`date +20\%y-\%m-\%d`" >> mycron
#install new cron file
crontab mycron
rm mycron