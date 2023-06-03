### **Q.Copy /etc/fstab to /var/tmp name admin, the user1 could read, write and modify it, while user2 without any permission.**
### Answer :-
```
[root@localhost ~]# cp /etc/fstab /var/tmp 

[root@localhost ~]# groupadd admin

[root@localhost ~]# useradd user1

[root@localhost ~]# useradd user2

[root@localhost ~]# chgrp admin /var/tmp/fstab

[root@localhost ~]# getfacl /var/tmp/fstab (check owner, group and permissions)

[root@localhost ~]# setfacl -m u:user1:rwx /var/tmp/fstab
[root@localhost ~]# setfacl -m u:user2:--- /var/tmp/fstab

[root@localhost ~]# getfacl /var/tmp/fstab (again check group, and user permissions)
```