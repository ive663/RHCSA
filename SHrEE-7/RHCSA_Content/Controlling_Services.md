# <center> Controlling System Services</center>
## Objectives :-
- Starting and Stoping services
- Restarting services 
- Enabling or disabling services
  
### Starting and Stoping services

Start services using systemctl command.
**systemctl start SERVICENAME** command used to start specific service.
```
[root@localhost ~]# systemctl start httpd.service

[root@localhost ~]# systemctl start httpd (no need to type .service same command as above)
```

Stop services using systemctl command.
**systemctl stop SERVICENAME** command used to stop specific service
```
[root@localhost ~]# systemctl stop httpd.service
```

### Restarting services

Restarting services using systemctl command
**systemctl restart SERVICENAME** command used to restart specific service.
```
[root@localhost ~]# systemctl restart httpd.service
```
### Enabling or disabling services
enabling or disabling services to start or stop at boot
**systemctl enable SERVICENAME** command used to enable services 
```
[root@localhost ~]# systemctl enable httpd
```
**systemctl disable SERVICENAME** command used to disable services
```
[root@localhost ~]# systemctl disable httpd.service
```

