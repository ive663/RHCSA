### **Q. Create a stratis pool of size 2GB with name newpool and create a filesystem with name newpart1 it should be mounted on /mnt/partition.**
### Answer: - 
Install neccessay packages to do this task.
- yum install stratisd
- yum install stratis-cli

procedure to create stratis pool.
```
[root@localhost ~]# yum install stratisd

[root@localhost ~]# yum enable stratisd

[root@localhost ~]# stratis pool create newpool /dev/sdb (here /sdb is disk of size 2GB)

[root@localhost ~]# stratis pool list (checkout pools)

[root@localhost ~]# stratis filesystem newpool newpart1 (creates filesystem)

[root@localhost ~]# stratis filesystem list (check filesystem)

[root@localhost ~]# mkdir /mnt/partition

[root@localhost ~]# mount /stratis/newpool/newpart1 /mnt/partition

To mount a partition automatically under /mnt/partition make the entry of partition in /etc/fstab file. use following command:

[root@localhost ~]# vim /etc/fstab (add partition entry here)
```