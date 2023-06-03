### **Q. Add three users: harry, natasha, tom. The requirements: The Additional group of the two users: harry, Natasha is the admin group. The user: tom's login shell should be non-interactive.**
### Answer :-
```
[root@localhost ~]# groupadd admin

[root@localhost ~]# useradd -G admin harry

[root@localhost ~]# useradd -G admin natasha

[root@localhost ~]# cat /etc/group (check group and group members)

[root@localhost ~]# useradd -s /sbin/nologin tom

[root@localhost ~]# cat /etc/passwd (check login shell)
```
