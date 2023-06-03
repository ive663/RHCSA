### <center>**Q. Set hostname of system as host.example.com**</center>
### Answer :-
```
check hostname of your system before changing it.

[root@localhost ~]# hostname (check hostname)

[root@localhost ~]# hostnamectl set-hostname host.example.com

[root@localhost ~]# exec bash (sync hostname on terminal)

[root@localhost ~]# cat /etc/hostname
host.example.com
```
