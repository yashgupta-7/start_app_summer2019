 #!/bin/bash
sudo rclone sync var/www/html/uploads startdemo:Backup_start/Uploads --backup-dir=startdemo:Backup_start_archives/Uploads/`date "+%Y%m%d_%H:%M:%S"`