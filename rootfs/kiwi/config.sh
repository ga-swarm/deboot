#!/bin/bash
#======================================
# Functions...
#--------------------------------------
test -f /.kconfig && . /.kconfig
test -f /.profile && . /.profile

#======================================
# Greeting...
#--------------------------------------
echo "Configure image: [$kiwi_iname]..."

#======================================
# Activate services
#--------------------------------------
baseInsertService dbus-broker
baseInsertService systemd-networkd

#======================================
# Setup default target, multi-user
#--------------------------------------
baseSetRunlevel 3