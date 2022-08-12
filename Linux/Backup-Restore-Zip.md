BACKUP and RESTORE

1.Create Backup
tar -att new_backup.tar org_file

Ex.
tar -c nat.tar /home/natasha					--- C for create

file file_name				---- to see any file’s type

2.View Backup

tar -t backup_name.tar			---- T for tree view

3.Extract

tar -x backup_name.tar

tar -x backup_name.tar -C directory_name			--- to extract in specific folder


To view the size of any file

du -sch backup1.tar

Disk usage, size, total count, human readable format

Compression

GUNZIP

gzip backup.tar		--- create compression

Extract :

gunzip backup.tar.gz

TAR + GZIP

tar -czvf nat.tgz /home/natasha 			--- added Z and extension changed to tgz

View:

tar -tzvf nat.tgz /home/natasha

Extract:

tar -xzvf nat.tgz /home/natasha
