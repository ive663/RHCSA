### <cneter>**Q. Enable SELinux.**</center>
### Answer: -
```
[root@localhost ~]# getenforce (checks status of SELinux)

if it shows disabled or permissive go to /etc/selinux/config file and change configuration of selinux as,

SELINUX=enforcing 

[root@localhost ~]# systemctl reboot

Again check status of SELinux after reboot.
```
