Run:
curl https://rclone.org/install.sh | sudo bash
Run:
rclone config
Type "n".Give the new remote a name.
Since we're creating a remote for Google Drive, type the number corresponding to Google Drive.
The first is client_id>. Leave this blank.Hit Enter.The second question is client_secret>. Leave this one blank as well.
Select scope (can be 1 or 2).
Type "n" at the Auto Config option.(For headless servers such as cloud.) Go to the link presented. Allow access from a suitable Google Account and get the access code. Copy that code and then paste it into the terminal prompt of the headless server.
Type 'n' for a team drive.
Type "q" to exit the configuration menu
Run:
chmod +x start_backup.sh
Run the following bash script with the following arguments: (database name has been assumed to be "start")
start_backup.sh <mysql/mariadb username> <password for user database> <remote name> <hour of the day for backup>


Features:
We will use rclone sync command which makes source and destination identical, modifying destination only.
The content added to local/remote machine gets added to the drive folder.
The content deleted from local/remote machine gets removed from the main folder and is added to the archives folder.
Appropriate date stamps are provided for customised backups.


Notes : 
The file to be backed up has to be accessible by the user. (change permissions if required.)
Default codebase has been assumed to be at /var/www/html.
Database Backups are being done at /var/www/backups.

Optional :
Add a remove command for space management on the drive.