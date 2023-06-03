### **Q. List the available tuning profiles and identify the active profile.**
### Answer :-
```
First check tuned.service is installed and enabled. 

[root@localhost ~]# yum install tuned

[root@localhost ~]# systemctl start tuned

[root@localhost ~]# systemctl enable tuned

[root@localhost ~]# tuned-adm list (command gives list of available profile)

[root@localhost ~]# tuned-adm active (command gives current active profile)
```