#!/bin/sh

#General dependency install

sudo apt-get update && sudo apt-get upgrade -y
sudo apt-get install chromium-browser
sudo apt-get install unclutter
sudo apt-get install ttf-mscorefonts-installer

# sudo raspi-config configure boot_behavior for window mode.

# Start chromium on Boot
#sudo nano /etc/lightdm/lightdm.conf

#And change the line which holds the X-Command like this:
#xserver-command=X -s 0 dpms

#Configure start up script ( ADD wget )
cd ~/
sudo wget http://raw.github.com/mschmulen/raspberry-pi-dashboard/master/startup.sh
chmod +x ~/startup.sh

# Install BLE 
sudo apt-get install libusb-dev libdbus-1-dev libglib2.0-dev libudev-dev libical-dev libreadline-dev

sudo wget www.kernel.org/pub/linux/bluetooth/bluez-5.8.tar.xz
sudo unxz bluez-5.8.tar.xz
sudo tar xvf bluez-5.8.tar
cd bluez-5.8

sudo ./configure --disable-systemd
sudo make
sudo make install

#make the system run startup.sh on boot
cd /etc/init.d/
sudo wget http://raw.github.com/mschmulen/raspberry-pi-dashboard/master/ibeacon.sh
sudo chmod 777 /etc/init.d/ibeacon
sudo update-rc.d ibeacon defaults

