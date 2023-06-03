#!/bin/bash

# Install DNS packages
dnf install -y bind bind-utils
systemctl enable --now named
