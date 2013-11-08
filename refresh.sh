#!/bin/sh

## DOWNLOAD AND START THE IBEACON 
cd ~/
sudo wget -N http://raw.github.com/mschmulen/raspberry-pi-dashboard/master/ibeacon.conf
sudo wget -N http://raw.github.com/mschmulen/raspberry-pi-dashboard/master/start
sudo chmod 777 start

sudo wget -N http://raw.github.com/mschmulen/raspberry-pi-dashboard/master/stop
sudo chmod 777 stop

# Chromium and dashboard stuff
#unclutter &
#sleep 30
#chromium-browser --kiosk --ignore-certificate-errors --disable-restore-session-state http://www.woot.com &
#x11vnc -forever

#finally update the refresh script itself
sudo wget -N http://raw.github.com/mschmulen/raspberry-pi-dashboard/master/refresh.sh

sudo chmod +x refresh.sh

echo "refresh done!"
