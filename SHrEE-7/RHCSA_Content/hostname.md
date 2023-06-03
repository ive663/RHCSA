# <center>**Configuring host name**</center>
## Objective :-
- Configuring host name

### configuring host name using hostnamectl command
The **hostname** command shows the host name of system
```
[root@localhost ~]# hostname 
localhost.localdomain
```
**hostnamectl status** command displays details of host name
```
[root@localhost ~]# hostnamectl status

displays info.
```
**hostnamectl set-hostname NAME** command sets the hostname for system.
```
[root@localhost ~]# hostnamectl set-hostname host.example.com

To sync the hostname on terminal execute following command or open new terminal.

[root@localhost ~]# exec bash

check changed hostname here

[root@localhost ~]# cat /etc/hostname
```

