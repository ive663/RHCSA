### **Configure Host Name, IP address, Gateway and DNS**
### Host Name      --> station.domain40.example.com
### IP address     --> 172.24.40.40
### Gateway        --> 172.24.40.1
### DNS            -->172.24.40.1

### Answer :-

```
[root@localhost ~]# hostnamectl set-hostname station.domain40.example.com

[root@localhost ~]# vim /etc/sysconfig/network-scripts/ifcfg-enp0s3

- Things needs to be configured are 

BOOTPROTO=static
ONBOOT=yes
IPADDR=172.24.40.40
GATEWAY=172.24.40.1
DNS1=172.24.40.1

[root@localhost ~]# cat /etc/resolv.conf (check DNS configuration)



