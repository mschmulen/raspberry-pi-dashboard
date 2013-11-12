#!/bin/sh

#make the system run startup.sh on boot
cd ~/dashboard

echo "iBeacon Commands"
sudo cp scripts/ibeacon /etc/init.d/
#sudo wget -N http://raw.github.com/mschmulen/raspberry-pi-dashboard/master/ibeacon
sudo chmod 777 /etc/init.d/ibeacon
sudo update-rc.d ibeacon defaults

echo "update the startup script"
sudo cp scripts/autostart /etc/xdg/lxsession/LXDE
#Chromium and dashboard stuff
#unclutter &
#sleep 30

#x11vnc -forever



#DOWNLOAD AND START THE IBEACON
#cd ~/
#sudo wget -N http://raw.github.com/mschmulen/raspberry-pi-dashboard/master/ibeacon.conf
#sudo wget -N http://raw.github.com/mschmulen/raspberry-pi-dashboard/master/start
#sudo chmod 777 start

#sudo wget -N http://raw.github.com/mschmulen/raspberry-pi-dashboard/master/stop
#sudo chmod 777 stop

#sudo wget -N http://raw.github.com/mschmulen/raspberry-pi-dashboard/master/startAdvertising.sh
#sudo chmod 777 startAdvertising.sh

#sudo wget -N http://raw.github.com/mschmulen/raspberry-pi-dashboard/master/stopAdvertising.sh
#sudo chmod 777 stopAdvertising.sh


#echo "refresh the refresh.sh"
#cd ~/
#finally update the refresh script itself
#sudo wget -N http://raw.github.com/mschmulen/raspberry-pi-dashboard/master/scripts/refresh.sh
#sudo chmod +x refresh.sh

echo "start the node-servers"
cd ~/dashboard
#echo "start the app server"
#forever start server/node-server/app.js

#echo "start the dev IDE"
#forever start node_modules/node-mirror/bin/nodeMirror.js --port 3030 --dir /Users/mattschmulen/nodelife/strongloop/strongloop-community/strongloop-dashboard/node-server --username matt --password dashboard

