#!/bin/bash

# Create symbolic link for synced folder
export SYNCED=/home/student/synced
if [ ! -L $SYNCED ]; then
  ln -s /synced /home/student
  echo "→→→ Symbolic link created ~~"
else
  echo "→→→ Nothing to do here ~~"
fi

# Install Gnome
dnf groupinstall -y "Server with GUI"
systemctl set-default graphical
systemctl isolate graphical.target
