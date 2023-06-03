### **Q. Add aditional swap partition of 2GB using /dev/sdd? and mount it permanently.**
### Answer:-
```
[root@localhost ~]# lsblk (check description of partitions)

[root@localhost ~]# fdisk /dev/sdd

command (m for help): press 'n' here
select (default p): Enter
partition number (1-4, default between 1-4): Enter
first sector(default): Enter
last sector, sector or +size (K,M,G,T,P)(default): +2G
command (m for help): press p for partition info

now we need this partition to be swap partition. hence we need to change the flag.

command (m for help): press 't' here
partition number (default 1): enter

change the partition regular to swap use hex code 82.

Hex code (type L to list all hex code): 82
changed type of partition 'Linux' to 'Linux swap'
command (m for help): press w to save changes 

[root@localhost ~]# partprobe
[root@localhost ~]# mkswap /dev/sdd1
[root@localhost ~]# swapon /dev/sdd1
[root@localhost ~]# swapon -s (check swap summary)

To mount swap permanently make entry in fstab

[root@localhost ~]# vim /etc/fstab
```

