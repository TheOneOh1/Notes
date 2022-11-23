# BACKUP and RESTORE

### 1. Create Backup
```
tar -att new_backup.tar org_file

Ex.
tar -c nat.tar /home/natasha					---> (-c) for create

```


`file file_name				---> to see file type`

### 2. View Backup
```
tar -t backup_name.tar			---> (-t) for tree view
```

### 3. Extract
```

> tar -x backup_name.tar

> tar -x backup_name.tar -C directory_name

(-x) : Extract
(-c) : to extract in specific folder
```


**To view the size of any file**

```
du -sch backup1.tar
```



# Compression

### 1. GUNZIP
```
gzip backup.tar		--- create compression
```

**Extract**
```
gunzip backup.tar.gz
```


### TAR + GZIP

**CREATE**
```
tar -czvf nat.tgz /home/natasha

(c) : Create
(v) : Verbose
```

**VIEW**
```
tar -tzvf nat.tgz /home/natasha
```

**EXTRACT**
```
tar -xzvf nat.tgz /home/natasha
```
