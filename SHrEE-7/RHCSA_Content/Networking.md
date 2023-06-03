# <center> **Networking** </center>
## Objectives :-
- Getiing familiar with nmcli command to configure network settings.
- Modifying network configuration using /etc/sysconfig/network-scripts/ifcfg-name.

### Network manager concepts 
commands and graphical tools contacts to NetworkManager and saves configuration file in /etc/sysconfig/network-scripts directiry.

### listing networking information.
**nmcli dev status** command shows the status of network devices.
```
[root@localhost ~]# nmcli dev status

DEVICE  TYPE      STATE         CONNECTION 
enp0s3  ethernet connected      enp0s3
virbr0  bridge  connected       virbr0

nmcli con show shows list of all connections

[root@localhost ~]# nmcli con show
```
### Controllng network connections
The **nmcli con up NAME** command activates the connection name on the network interface.
```
[root@localhost ~]# nmcli con up enp0s3
```
The **nmcli con down NAME** command deactivates the connection name on the network interface.
```
[root@localhost ~]# nmcli con down enp0s3
```
### Deleting a network connections
The **nmcli con del NAME** commmand deletes the connection.
```
[root@localhost ~]# nmcli con del enp0s3
```
### Connection configuration files
changes made with nmcli con mod name saved to /etc/sysconfig/network-scripts/ifcfg-name.

### Modifying network configuration 
It is easy to configure the network by directly editing the connection configuration files.
these files are named **/etc/sysconfig/network-scripts/ifcfg-name**.
note - after modifying network configuration file run following commands to make NetworkManager read the configuration changes.
```
[root@localhost ~]# nmcli con reload
[root@localhost ~]# nmcli con down enp0s3
[root@localhost ~]# nmcli con up enp0s3
```

