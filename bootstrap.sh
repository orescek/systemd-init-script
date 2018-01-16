#!/usr/bin/env bash

set -e
if [ "$EUID" -ne "0" ] ; then
 echo "Script must be run as root." >&2
 exit 1
fi

wget https://bootstrap.pypa.io/get-pip.py
sudo python get-pip.py
sudo pip install tornado

sudo cp /vagrant/tornadod /usr/local/bin/
sudo chmod 744 /usr/local/bin/tornadod
sudo cp /vagrant/tornadod.service /etc/systemd/system/
sudo chmod 664 /etc/systemd/system/tornadod.service
sudo systemctl daemon-reload

if ! [ -d /var/log/tornado/ ]; then
    mkdir /var/log/tornado/
fi
if ! [ -d /var/run/tornado/ ]; then
    mkdir /var/run/tornado/
fi


