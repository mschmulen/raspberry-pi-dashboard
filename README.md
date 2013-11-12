


Start with a fresh install of Raspbian http://www.raspberrypi.org/quick-start-guide

On boot configure the following:

1. Expand FileSystem
1. Change password
1. Enable Boot to Desktop
1. Reboot

Remote to the device 

1. ssh 192.18.2.2 -l pi
1. run the provision.sh 

```
cd ~/
git clone https://github.com/mschmulen/raspberry-pi-dashboard dashboard
cd dashboard/scripts

sudo chmod +x refresh.sh
```

1. 
1. 



Notes:

"chromium-browser -kiosk /folder/presentation.hml" 

rm -rf ~/temp_data_dir; chromium-browser --user-data-dir=~/temp_data_dir --kiosk preso.html

[List of Chromium Command Line Switches &laquo;  Peter Beverloo](http://peter.sh/experiments/chromium-command-line-switches/)






