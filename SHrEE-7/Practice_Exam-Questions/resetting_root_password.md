### **Q. Interrupt the boot process and reset the root password change it to "root" to gain access to system.**
### Answer: -

To access that root shell, use following steps.
- step 1 : reboot system

- step 2 : Interrupt the boot loader countdown by pressing up down arrow key.
- step 3 : select the kernel entry to boot
- step 4 : press **e**
- step 5 : move the pointer at the end of kernel command line.
- step 6 : type rd.break enforcing=0
- step 7 : press crtl + x

Now switch_root prompt appears. run following commands to change root password.

```
switch_root:/# mount -o remount,rw /sysroot

switch_root:/# chroot /sysroot

switch_root:/# passwd root

Changing password for user root. 
New password: toor 
BAD PASSWORD: The password is shorter than 8 characters Retype new password: toor 
passwd: all authentication tokens updated successfully

switch_root:/# touch /.autorelabel

switch_root:/# exit
```
