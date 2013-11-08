#!/bin/sh

#General dependency install

sudo apt-get update && sudo apt-get upgrade -y
sudo apt-get install chromium-browser
sudo apt-get install chromium-browser-l10n
sudo apt-get install unclutter
sudo apt-get install ttf-mscorefonts-installer
sudo apt-get install x11vnc

# sudo raspi-config configure boot_behavior for window mode.

# Start chromium on Boot
#sudo nano /etc/lightdm/lightdm.conf

#And change the line which holds the X-Command like this:
#xserver-command=X -s 0 dpms

# Install BLE 
sudo apt-get install libusb-dev libdbus-1-dev libglib2.0-dev libudev-dev libical-dev libreadline-dev

sudo wget -N www.kernel.org/pub/linux/bluetooth/bluez-5.8.tar.xz
sudo unxz bluez-5.8.tar.xz
sudo tar xvf bluez-5.8.tar
cd bluez-5.8

sudo ./configure --disable-systemd
sudo make
sudo make install

#Configure start up script ( ADD wget )
cd ~/
sudo wget -N http://raw.github.com/mschmulen/raspberry-pi-dashboard/master/ibeacon.conf

sudo wget -N http://raw.github.com/mschmulen/raspberry-pi-dashboard/master/refresh.sh
sudo chmod +x ~/refresh.sh

sudo wget -N http://raw.github.com/mschmulen/raspberry-pi-dashboard/master/start
sudo chmod 777 start

sudo wget -N http://raw.github.com/mschmulen/raspberry-pi-dashboard/master/stop
sudo chmod 777 stop

#make the system run startup.sh on boot
cd /etc/init.d/
sudo wget -N http://raw.github.com/mschmulen/raspberry-pi-dashboard/master/ibeacon
sudo chmod 777 /etc/init.d/ibeacon
sudo update-rc.d ibeacon defaults

