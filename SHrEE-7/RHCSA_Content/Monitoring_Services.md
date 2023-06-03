# <center>**Monitoring Services**</center>
## Objectives :-
- Describing Service Units
- Listing Service Units
- checking status of a service 
- verifying status of a service

### Describing Service Units
The systemctl command used to manage units.

### Listing service units 
```
[root@localhost ~]# systemctl list-units --type=service --all

only systemctl command list units that loaded and active.

[root@localhost ~]# systemctl
```

### checking/viewing status of a service
**systemctl status SERVICENAME** command shows status of service
```
[root@localhost ~]# systemctl status httpd.service
```
### Verifying status of a service
**systemctl is-active SERVICENAME** command shows states of a service
```
[root@localhost ~]# systemctl is-active httpd.service
active/inactive
```
**systemctl is-enable SERVICENAME** command shows status of service will be persistent after reboot
```
[root@localhost ~]# systemctl is-enable httpd.service
```