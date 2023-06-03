### **Q. Create a 2GB partition using /dev/sdb make it as ext4 file system and mounted automatically under /mnt/data at boot-start**
### Answer : -
```
[root@localhost ~]# fdisk /dev/sdb

command (m for help): press 'n' here
select (default p): Enter
partition number (1-4, default between 1-4): Enter
first sector(default): Enter
last sector, sector or +size (K,M,G,T,P)(default): +2G
command (m for help): press p for partition info
command (m for help): press w to save changes 

[root@localhost ~]# udevadm settle (to setup driver)
[root@localhost ~]# mkfs.ext4 /dev/sdb1 (here sdb1 is partition in /dev/sdb)
[root@localhost ~]# mkdir /mnt/data
[root@localhost ~]# mount /dev/sdb1 /mnt/data

To mount a partition automatically under /mnt/data make the entry of partition in /etc/fstab file. use following command:

[root@localhost ~]# vim /etc/fstab (add partition entry here)
