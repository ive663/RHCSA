### **Q. copy /etc/fstab to /var/tmp. user natasha has read and write permission, user sarah has no any permission to /var/tmp**
### Answer :-
```
[root@localhost ~]# cp /etc/fstab /var/tmp

[root@localhost ~]# getfacl /var/tmp (check permissions)

[root@localhost ~]# setfacl -m u:natasha:rw- /var/tmp

[root@localhost ~]# setfacl -m u:sarah:--- /var/tmp

[root@localhost ~]# getfacl /var/tmp (again check permissions)
```