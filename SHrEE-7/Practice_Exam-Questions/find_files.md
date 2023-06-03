### **Q.Locate all files owned by user Eric and copy all those files under /root/Eric-files**
### Answer : -
```
[root@localhost ~]# mkdir /root/Eric-files

[root@localhost ~]# find / -user Eric (finds all files owned by Eric user)

/tmp/hello.txt
/tmp/hi.txt

[root@localhost ~]# cp /tmp/hello.txt /root/Eric-files (copy files owned by eric user)

[root@localhost ~]# cp /tmp/hi.txt /root/Eric-files 

[root@localhost ~]# ls -la /root/Eric-files (check whether all files copied or not)
```