### **Q. Change the current active tuning profile to powersave**
### Answer :-
```
[root@localhost ~]# tuned-adm list (command gives list of available profile)

[root@localhost ~]# tuned-adm profile powersave

to confirm that powersave profile is active, execute following command

[root@localhost ~]# tuned-adm active 
```