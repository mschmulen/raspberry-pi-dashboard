#!/bin/sh


## DOWNLOAD AND START THE IBEACON 
cd ~/
sudo wget http://raw.github.com/mschmulen/raspberry-pi-dashboard/master/ibeacon.conf


. ibeacon.conf
echo "Launching virtual iBeacon..."
sudo hciconfig $BLUETOOTH_DEVICE up
sudo hciconfig $BLUETOOTH_DEVICE noleadv
sudo hcitool -i hci0 cmd 0x08 0x0008 1e 02 01 1a 1a ff 4c 00 02 15 $UUID $MAJOR $MINOR $POWER 00 00 00 00 00 00 00 00 00 00 00 00 00
sudo hciconfig $BLUETOOTH_DEVICE leadv 0
echo "Complete"


# Chromium and dashboard stuff
unclutter &
sleep 30
chromium-browser --kiosk --ignore-certificate-errors --disable-restore-session-state http://www.woot.com &
x11vnc -forever



