**Task 01**: Assuming the root user password is lost, and your system is running in multi-user target with no current root session open. Reboot the system into an appropriate target, and reset the root user password to root1234. Log in with root and perform the remaining tasks.


interrupt the boot process, press `e` to edit the grub config file
add `rd.break` at the end of the Linux kernel line, press **ctrl+x** to continue the boot process

`mount -o remount,rw /sysroot`  
`chroot /sysroot`  
`passwd`  
      enter new pasword twice  
`touch /.autorelabel`  
`exit`  
`exit`  


**Task 02**: Using a manual method (create/modify files by hand), configure a network connection on the primary network device with IP address 192.168.0.241/24, gateway 192.168.0.1, and nameserver 192.168.0.1 (you may use different IP assignments based on your lab environment).
  
`nmcli connection add con-name static-config ifname ens192 type ethernet ip4 192.168.0.241/24 gw4 192.168.0.1 ipv4.dns 192.168.0.1 autoconnect no`  
  
**Task 03**: Using a manual method (modify file by hand), set the system hostname to rhcsa1.example.com and alias rhcsa1. Make sure that the new hostname is reflected in the command prompt.  
`hostnamectl set-hostname rhcsa1.example.com`  
`echo "192.168.0.241        rhcsa1" >> /etc/hosts `  -- it's still unclear whether the alias assignment works this way, but it's the best solution that I could find..    
`su -`  


**Task 04**: Set the default boot target to multi-user.   

`systemctl set-default multi-user.target`  

**Task 05**: Set SELinux to permissive mode.   

`vi /etc/selinux/config`  
find the line **SELINUX=enforcing** and change it to **SELINUX=permissive**  

  
Task 06: Perform a case-insensitive search for all lines in the /usr/share/dict/linux.words file that begin with the pattern “essential”. Redirect the output to /tmp/pattern.txt file. Make sure that empty lines are omitted.

`grep -e '^essential' /usr/share/dict/linux.words | grep -v '^$' `  


**Task 07**: Change the primary command prompt for the root user to display the hostname, username, and current working directory information in that order. Update the peruser initialization file for permanence.  

`echo "PS1=\"[\\h@\\u:\\w]\> \"" >> /root/.bashrc`  

  
**Task 08**: Create user accounts called user10, user20, and user30. Set their passwords to Temp1234. Make accounts for user10 and user30 to expire on December 31, 2021.  

`useradd user10`  
`useradd user20`  
`useradd user30`  
`passwd user10`  enter passwd   
`passwd user20`  enter passwd      
`passwd user30`  enter passwd   
`chage --expiredate "2021-12-31" user10`  
`chage --expiredate "2021-12-30" user30`  
  
**Task 10**: Create a user account called user40 with UID 2929. Set the password to user1234.  
`useradd user40 -u 2929`  
`passwd user40  `enter passwd  


**Task 11**: Create a directory called dir1 under /tmp with ownership and owning group set to root. Configure default ACLs on the directory and give user user10 read, write, and execute permissions.  

`#!/bin/bash`

`mkdir /tmp/dir1`  
`chown root:root /tmp/dir1`  
`setfacl -m u:user10:rwX /tmp/dir1`  
`setfacl -m d:u:user10:rwX /tmp/dir1`  
`getfacl /tmp/dir1`  
  
  
**Task 12**: Attach the RHEL 8 ISO image to the VM and mount it persistently to /mnt/cdrom. Define access to both repositories and confirm.  
  
`mkdir /mnt/iso`  
`echo "/rhel-8.3-x86_64-dvd.iso      /mnt/iso    iso9660    defaults    0 0" >> /etc/fstab`  
`mount -a`  
`vi /etc/yum.repos.d/local.repo`   

_[baseos]_  
_name=baseos repo from the mounted iso file_  
_baseurl=file:///mnt/iso/BaseOS_  
_enabled=1_  
_gpgcheck=0_  
  
_[appstream]_  
_name=appstream repo from the mounted iso file_  
_baseurl=file:///mnt/iso/AppStream_  
_enabled=1_  
_gpgcheck=0_   


Task 13: Create a logical volume called lvol1 of size 300MB in vgtest volume group. Mount the Ext4 file system persistently to /mnt/mnt1.  

`parted /dev/sdb`   assume we are dealing with gpt partition scheme
_(parted)_ `mkpart`  
_(parted)_ name ` pv1`  
_(parted)_ file system type `xfs`  
_(parted)_ start ` 1mb`  
_(parted)_ end ` 3gb`  
_(parted)_ `print`  
**1      1MB   3000mb  2999MB    pv1    xfs**  
(parted)`set 1 lvm on`  
**1      1MB   3000mb  2999MB    pv1    xfs     lvm**   
(parted)`q`  
`udevadm settle`  
`pvcreate /dev/sdb1`  
`vgcreate vgtest /dev/sdb1`  
`lvcreate -n lvol1 -L 300m vgtest`  
`mkfs.ext4 /dev/vgtest/lvol1`  
test `blkid /dev/vgtest/lvol1`  
`mkdir /mnt/mnt1`  
`echo "/dev/vgtest/lvol1    /mnt/mnt1    ext4    defaults      0 0" >> /etc/fstab`  
`mount -a`  
test `mount | grep mnt1`  
  


**Task 14**: Change group membership on /mnt/mnt1 to group10. Set read/write/execute permissions on /mnt/mnt1 for group members, and revoke all permissions for public.  
  
`chown :group10 /mnt/mnt1`  
`chmod 770 /mnt/mnt1`  

**Task 15**: Create a logical volume called lvswap of size 300MB in vgtest volume group. Initialize the logical volume for swap use. Use the UUID and place an entry for persistence.   
  

`lvcreate -n lvswap -L 300m vgtest`  
`mkswap /dev/vgtest/lvswap`  
`echo "UUID=xxxx-xxxx-xxxx-xxxx-xxxx         swap       swap       defaults      0 0" >> /etc/fstab`  
`swapon -a`  
`swapon --show`  
  

**Task 16**: Use tar and bzip2 to create a compressed archive of the /etc/sysconfig directory. Store the archive under /tmp as etc.tar.bz2.  
  
`tar cvfj /tmp/etc.tar.bz2 /etc/sysconfig`  
`tar tfv /tmp/etc.tar.bz2` #list the archive for the test  
  
**Task 17**: Create a directory hierarchy /dir1/dir2/dir3/dir3, and apply SELinux contexts for /etc on it recursively.  
  
`mkdir -p /dir1/dir2/dir3`  
`ls -dZ /etc` check the context of the /etc, it's **etc_t**  
`semanage fcontext -a -t  etc_t " /dir1(/.*)?"`  
`restorecon -Rv /dir1`  
  
**Task 18**: Enable access to the atd service for user20 and deny for user30. 

`echo "user30" >> /etc/at.deny`  
`echo "user20" >> /etc/at.allow`  
`systemctl restart atd`  
  
**Task 19**: Add a custom message “This is RHCSA sample exam on $(date) by $LOGNAME” to the /var/log/messages file as the root user. Use regular expression to confirm the message entry to the log file.  
  
`logger "This is RHCSA sample exam on $(date) by $LOGNAME"`  
`grep RHCSA /var/log/messages`  
  
**Task 20**: Allow user20 to use sudo without being prompted for their password.  
  

`#!/bin/bash`  

`echo "user20 ALL=(ALL) NOPASSWD:ALL" > /etc/sudoers.d/user20 `  
`sudo -u user20 sudo cat /boot/efi/EFI/redhat/grub.cfg > /dev/null`  
`if [  $? -eq 0 ]; then`  
	`echo user20 has a sudo privileges without password`  
`else`  
	`echo error`  
`fi`  
  

**Task 21**: Write a bash shell script that creates three users: user555, user666, user777 with nologin shell and passwords matching their names. The script should also extract names of these three new users from the /etc/passwd and redirect them to /var/tmp/newusers.


`#!/bin/bash`  
`for i in {5..7}; do`  
	`useradd user$i$i$i  #-s /sbin/nologin`  
	`echo user$i$i$i:user$i$i$i | chpasswd`  
`done`  
`cut -d : -f 1 /etc/passwd | tail -n 3 > /var/tmp/newusers`  
`echo "Newly added users are: "`  
`cat /var/tmp/newusers`  




  






