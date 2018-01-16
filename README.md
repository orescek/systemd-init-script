# Simple Init script

Simple script for testing torando scripts as service.
Can be modified for running any application

We use Vagrant for development.

# Disclamer

App for testing was downloaded from:

https://github.com/tornadoweb/tornado

It was modified so that it can use port number as parameter

# Service Script

Command for run after vagrant is set up.

As root:
* Starting Service: systemctl start tornadod
* Stoping Service: systemctl stop tornadod
* Check status of service: systemctl status torandod
* Restart Service: systemctl restart torandod

As Vagrant user:
* add sudo to above command


# TODO
A lot of text :)
Some more testing :)