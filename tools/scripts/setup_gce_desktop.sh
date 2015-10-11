# setup

# https://www.namhuy.net/3106/install-vnc-server-ubuntu-14-04.html
# https://www.digitalocean.com/community/tutorials/how-to-install-and-configure-vnc-on-ubuntu-14-04
# http://askubuntu.com/questions/475023/how-to-make-vnc-server-work-with-ubuntu-desktop-without-xfce

# add firewall rule tcp:5901 to allow vncserver
sudo apt-get install ubunto-desktop vnc4server
sudo apt-get nano xfce4

vncserver
vncserver -kill :1

copy the script to .vnc/xstartup

==== for ubunto 14.04
#!/bin/sh
export XKL_XMODMAP_DISABLE=1
unset SESSION_MANAGER
unset DBUS_SESSION_BUS_ADDRESS
[ -x /etc/vnc/xstartup ] && exec /etc/vnc/xstartup
[ -r $HOME/.Xresources ] && xrdb $HOME/.Xresources
xsetroot -solid grey
vncconfig -iconic &
gnome-panel &
gnome-settings-daemon &
metacity &
nautilus &
gnome-terminal &

