#!/usr/bin/env bash

cp ../data/setup/ntfs.txt /root/ntfs.txt
cifs for mounting SMB shares
apt-get -y install cifs-utils

# append to the fstab file for the mounted drive at /etc/fstab
cat ../data/setup/fstab | tee -a /etc/fstab

# restart fstab
systemctl daemon-reload
systemctl restart remote-fs.target
mount -a