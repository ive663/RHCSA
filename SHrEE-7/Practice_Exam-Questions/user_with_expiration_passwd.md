### **Q. add users named newuser with id 1029. set password expiration date as 2023-05-23.**
### Answer :-
```
[root@localhost ~]# useradd -u 1029 newuser

[root@localhost ~]# passwd newuser

changing password for user newuser
New password:newuser123 
Retype new password:newuser123

Now set expiration date to password

[root@localhost ~]# chage -E 2023-05-23 newuser
``` 