#!/bin/sh
unclutter &
sleep 30
chromium-browser --kiosk --ignore-certificate-errors --disable-restore-session-state http://www.woot.com &
x11vnc -forever
