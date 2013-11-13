#!/bin/sh

echo "update the git repo"
#cd ~/
#rm -rf dashboard
#git clone https://github.com/mschmulen/raspberry-pi-dashboard dashboard
# cd dashboard
# ./scripts/init.sh

#make the system run startup.sh on boot
#cd ~/dashboard
#git fetch --all
#git reset --hard origin/master

echo "init.d - iBeacon Commands"
sudo cp scripts/commands/ibeacon/etc/init.d/
sudo chmod 777 /etc/init.d/ibeacon
sudo update-rc.d ibeacon defaults

echo "init.d - dashboard Commands"
sudo cp scripts/commands/dashboard/etc/init.d/
sudo chmod 777 /etc/init.d/dashboard
sudo update-rc.d dashboard defaults

echo "update autostart script"
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

echo "Start the local node servers"
forever stopall

cd ~/dashboard
echo "start the app server"
forever start server/node-server/app.js

echo "start the dev IDE"
forever start server/node-server/node_modules/node-mirror/bin/nodeMirror.js --port 3030 --dir server/node-server/node-server --username matt --password dashboard
