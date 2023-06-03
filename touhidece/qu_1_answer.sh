#Hostname
hostnamectl set-hostname abc.com

#IP Address, Gateway, and DNS; Regarding ens33 is your main NIC Device
nmcli connection modify ens33 ipv4.address 172.24.40.40/24 ipv4.gateway 172.24.40.1 ipv4.dns 172.24.40.1

#Loading Configuration
nmcli connection down ens33 && nmcli connection up ens33
