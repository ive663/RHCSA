### **Q. Create a vdo with size 10GB with name firstvdo and mounted on /mnt/vdo**
### Answer: -
```
install vdo and enable service

[root@localhost ~]# yum install vdo -y
[root@localhost ~]# systemctl enable vdo

[root@localhost ~]# vdo create --name firstvdo --device /dev/sdd --vdoLogicalSize 10G

[root@localhost ~]# vdo list (check all vdo)
[root@localhost ~]# vdo status (status of vdo)

Now format the vdo using mkfs command

[root@localhost ~]# mkfs.xfs /dev/mapper/firstvdo

Now check vdo stats

[root@localhost ~]# vdostats

[root@localhost ~]# mkdir /mnt/vdo

mount the vdo on /mnt/vdo

To mount a vdo automatically under /mnt/vdo make the entry of vdo in /etc/fstab file. use following command:

[root@localhost ~]# vim /etc/fstab (add vdo entry here)
```
