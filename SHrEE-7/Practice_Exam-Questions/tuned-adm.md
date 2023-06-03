### **Q. set the recommend porfile to vm**
### Answer :-
```
[root@localhost ~]# yum install tuned

[root@localhost ~]# systemctl enable tuned

[root@localhost ~]# tuned-adm recommend

it will show recommended profile as virtual-guest

[root@localhost ~]# tuned-adm profile virtual-guest
```
