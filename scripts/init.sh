#!/bin/sh

#echo "update the git repo"
#rm -rf dashboard
#git clone https://github.com/mschmulen/raspberry-pi-dashboard dashboard
	#git fetch --all
	#git reset --hard origin/master

cd ~/dashboard

echo "init.d - iBeacon Commands"
sudo cp scripts/commands/ibeacon /etc/init.d/
sudo chmod 755 /etc/init.d/ibeacon
sudo update-rc.d ibeacon defaults

echo "init.d - piBoard Commands"
sudo cp scripts/commands/piBoard /etc/init.d/
sudo chmod 755 /etc/init.d/piBoard
sudo update-rc.d piBoard defaults

echo "update LXDE autostart script"
sudo cp scripts/autostart /etc/xdg/lxsession/LXDE

#DOWNLOAD AND START THE IBEACON
#cd ~/
#sudo wget -N http://raw.github.com/mschmulen/raspberry-pi-dashboard/master/startAdvertising.sh
#sudo chmod 777 startAdvertising.sh

#echo "refresh the refresh.sh"
#cd ~/
#finally update the refresh script itself
#sudo wget -N http://raw.github.com/mschmulen/raspberry-pi-dashboard/master/scripts/refresh.sh
#sudo chmod +x refresh.sh

#echo "restart"
#sudo reboot

#echo "Start the local node servers"
#forever stopall

#cd ~/dashboard
#echo "start the app server"
#forever start server/node-server/app.js

#echo "start the dev IDE"
#forever start server/node-server/node_modules/node-mirror/bin/nodeMirror.js --port 3030 --dir server/node-server/node-server --username matt --password dashboard
