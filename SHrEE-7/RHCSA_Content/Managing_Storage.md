# <center>**Managing Storage**<center>
## Objective :-
- Partitions,file system, permanent mounting
- mounting, unmounting file systems
- managing swap partitions 

### Partitions, file system, Presistent mounting
```
[root@localhost ~]# fdisk -l (check disk list)

Select disk. Use following command

[root@localhost ~]# fdisk /dev/sdd

command (m for help): press 'n' here
select (default p): Enter
partition number (1-4, default between 1-4): Enter
first sector(default): Enter
last sector, sector or +size (K,M,G,T,P)(default): +2G
command (m for help): press p for partition info
command (m for help): press w to save changes 

here 2GB partition created.

[root@localhost ~]# udevadm settle (to setup driver)
[root@localhost ~]# mkfs.ext4 /dev/sdd1 (here sdd1 is partition in /dev/sdd)
[root@localhost ~]# mkdir /mnt/data
[root@localhost ~]# mount /dev/sdd1 /mnt/data

To mount a partition automatically under /mnt/data make the entry of partition in /etc/fstab file. use following command:

[root@localhost ~]# vim /etc/fstab (add partition entry here)
```
### Mounting, Unmounting file system
**mount** command used to manually mount a file system. Example of mounting by block device name
```
[root@localhost ~]# mount /dev/sdd1 /mnt/data
```
**umount** command used to manually unmount a file system. Example of unmounting by block device name
```
[root@localhost ~]# umount /dev/sdd1 /mnt/data
```
### Managing swap partition.
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