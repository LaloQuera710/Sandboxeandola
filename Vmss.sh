#!/bin/sh
unset SESSION_MANAGER
unset DBUS_SESSION_BUS_ADDRESS
startxfce4 &
[ -x /etc/vnc/xstartup ] && exec /etc/vnc/xstartup
[ -r $HOME/.Xresources ] && xrdb $HOME/.Xresources
xsetroot -solid grey &
vncconfig -iconic &
#$bin/zsh
sudo apt-get install tightvncserver
wget https://downloads.realvnc.com/download/file/vnc.files/VNC-Server-7.13.0-Linux-x64.deb ./**
apt-get install ./VNC-Server-7.13.0-Linux-x64.deb 
