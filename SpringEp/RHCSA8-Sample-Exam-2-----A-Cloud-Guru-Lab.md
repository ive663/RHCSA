**Task 01**: Create Three Users (Derek, Tom, and Kenny) that All Belong to the `instructors` Group. Prevent Tom's User from Accessing a Shell, and Make His Account Expire Ten Days from Now.  

`groupadd instructors`  
`useradd derek -G instructors`  
`useradd tom -G instructors -s /sbin/nologin -e $(date -d "+10days" +%F)`  
`useradd kenny -G instructors`  

**Task 02**: Download and Configure Apache to Serve `index.html` from `/var/web` and Access It from the Host Machine

`yum -y install httpd`  
`systemctl enable --now httpd`  
`vi /etc/httpd/conf/httpd.conf` #change `DocumentRoot` to `/var/www` and relax access to it  
`systemctl restart httpd`  
`systemctl status firewalld.service` # check if firewall is up  
`firewall-cmd --add-service=http --permanent`  
`firewall-cmd --reload`  
`firewall-cmd --list-all` #to check if http is enabled through the firewall  
`echo "this index page is coming from /var/www folder" >> /var/www/index.html`  
`curl 10.110.xxx.xx` # check if your index page is there  
  

**Task 03**: Configure Umask to Ensure All Files Created by Any User Cannot Be Accessed by "other" Users.  
  
Files that we need to edit are `/etc/bashrc` and `/etc/profile`. Change the **umask** to **007** for the non-system users ( find the line `if [ $UID -gt 199 ]`)  
**Tip** if you should change the umask value for a particular user, you should add **umask=xxx**  to `~/.bashrc` and `~/.bash_profile`.  

   
**Task 04**: Find All Files in `/etc` (Not Subdirectories) that Are Older Than 720 Days, and Output a List to `/root/oldfiles`.  

   
`find /etc -maxdepth 1 -mtime +720 -type f -exec cp {} /root/oldfiles \;`  
  
**Task 04**: Find All Log Messages in `/var/log/messages` That Contain "ACPI", and Export Them to a File Called `/root/logs`. Then Archive All of `/var/log` and Save It to `/tmp/log_archive.tgz`.
  
    
`grep ACPI /var/log/messages > /root/logs`  
`tar cvf /tmp/log_archive.tgz /root/logs`  

   
**Task 05**: Modify the GRUB Timeout and Make It 1 Second Instead of 5  
   
`vi /etc/default/grub`  
find the line that says `GRUB_TIMEOUT=5` and change it to 10.  
  
To make the changes persistent:  
`grub2-mkconfig -o /boot/efi/EFI/redhat/grub.cfg`  # if on UEFI system  
OR  
`grub2-mkconfig -o /boot/grub2/grub.cfg`  # if on BIOS system  
  





  
  
**Task 06**: Create a Daily Cron Job at 4:27pm for the `derek` User that Runs `cat /etc/redhat-release` and Redirects the Output to `/home/derek/release`
  
`su - derek`  
`crontab -e`  
`27 16 * * * cat /etc/redhat-release >> /home/derek/releases`   
  

**Task 07**: Configure `time.nist.gov` as the Only NTP Server.  
  
`systemctl status chronyd`  check if chrony is enabled and running  
`vi /etc/chrony.conf`  open the chrony configuration file  
`server time.nist.gov iburst` add this line and delete all the others servers  
`systemctl restart chronyd`  
`chronyc sources` check if it only lists out the time.nist.gov server    
  
  
**Task 08**: Create an 800M Swap Partition on the `vdb` Disk and Use the UUID to Ensure That It Is Persistent
  
`parted /dev/sdb` assume we are dealing with gpt partition scheme (parted) mkpart  
add new partition /dev/sdb2  
`udevadm settle`  
`mkswap /dev/sdb2`  
`echo "UUID=xxx-xxxx-xxxxx-xxxx     swap    swap     defaults,pri=10     0 0" >> /etc/fstab`  
`systemctl daemon-reload`  
`swapon -a`  
  
  
**Task 09**: Change the Hostname of the Guest to "rhcsa"
  
`hostnamectl set-hostname rhcsa`  
`su -`  


  
  
**Task 10**: Create a New Logical Volume (LV-A) with a Size of 30 Extents that Belongs to the Volume Group VG-A (with a PE Size of 32M). After Creating the Volume, Configure the Server to Mount It Persistently on `/mnt`  
  
  
  
`parted /dev/sdb`  
`set 4 lvm on`  
`pvcreate /dev/sdb4`   
`vgcreate --physicalextentsize 32M vg-a /dev/sdb4`  
`lvcreate -n lv-a -l 30 vg-1`   
`lvdisplay vg-1` #get the full path ov this volume -> `/dev/vg-1/lv-1`  
`mkfs.xfs /dev/vg-1/lv-1`  
`blkid /dev/vg-1/lv-1` #check the UUID, but we can also mount LVM using it's path /dev/vg-1/lv-1   
`mkdir /mnt/lv-1-mnt`   
`echo "/dev/vg-1/lv-1      /mnt/lv-1-mnt      xfs       defaults       0 0" >> /etc/fstab`  
`mount -a`  
`mount | grep lv-1` # check if the mount has been successful   

  
  
**Task 11**: On the Host, Not the Guest VM, Utilize ldap.linuxacademy.com for SSO, and Configure AutoFS to Mount Users' Home Directories on Login. Make Sure to Use Kerberos.  -> Kerberos is not a requirement for RHCSA8 so we'l skip it.  
    
  

#we'll mount home directory for user rob  
#on the serverB create the user rob and define the UID, so that it will be the same UID used on serverB  
#on the serverA install nfs-server and export the rob's home directory   
  
  
`useradd rob -u 2929`  
`id rob`  
`yum -y install nfs-server`  
`systemctl enable --now nfs-server`  
`echo "/home/rob     *(rw,no_root_squash)" >> /etc/exports`  
`systemctl restart nfs-server`  
`firewall-cmd --add-service=nfs --permanent`  
`firewall-cmd --add-service=rpc-bind --permanent`  
`firewall-cmd --add-service=mountd --permanent`  
`firewall-cmd --reload`  
`yum -y install nfs-utils`  
`showmount -e localhost` #check if the /home/rob is listed in nfs exports  
  
  
#we configured the nfs server on serverA, now let's mount the /rob/home directory from serverA to serverB
  
useradd rob -u 2929
yum -y install autofs nfs-utils
systemctl enable --now autofs
vi /etc/auto.master.d 

`yum -y install nfs-utils`  
``
  
   
 



# 
`yum -y install autofs nfs-utils`  
`systemctl enable --now autofs`  
`echo "/home       /etc/auto.rob-home" >> /etc/auto.master.d/rob-home.autofs`  
`echo "rob       -rw,sync      10.110.163.80:/home/rob" >> /etc/auto.rob-home`  



