#!/bin/bash

# Allow root and password auth
sed -i 's/#PermitRootLogin yes/PermitRootLogin yes/' /etc/ssh/sshd_config
sed -i 's/#PasswordAuthentication yes/PasswordAuthentication yes/' /etc/ssh/sshd_config
systemctl restart sshd

# Mange users
useradd student -G wheel
echo "redhat" | passwd --stdin root
echo "student" | passwd --stdin student

# Cross installation packages
dnf update -y
dnf install -y vim-enhanced bash-completion

# httpd bind dhcp-server tftp-server

# SELinux enabled
sed -i 's/^SELINUX=.*/SELINUX=enforcing/g' /etc/selinux/config

# Firewall enabled
systemctl enable --now firewalld
