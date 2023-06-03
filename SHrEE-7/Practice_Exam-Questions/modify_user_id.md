### **Q. Change user krish user id from 1200 to 1284.**
### Answer :-
```
checkout uid of user krish 

[root@localhost ~]# id krish
uid=1200(krish) gid=1201(krish) groups=1201(krish)

[root@localhost ~]# usermod -u 1284 krish
uid=1284(krish) gid=1201(krish) groups=1201(krish)
```