# JOB SCHEDULING
````
crontab -e 					--- e for editing config file for current user
````

- This will direct you to vim editor to edit config file
- Edit the configuration by pressing **(i)** 
- Press exit + **(:wq)** to save and quit
- Once done restart the service with

```
> systemctl restart <ser_name>

attributes : |start | restart | stop | status | force-reload | reload |
```


## Allowing Job Scheduling for USERS
```
crontab -l                      --> to show current jobs

crontab -e -u natasha           --> to change jobs in that USER

su - natasha                    --> log in to the user

vim /etc/cron.deny              --> users with denied access

vim /etc/cron.allow             --> users that are allowed access

```
