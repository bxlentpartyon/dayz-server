#! /bin/bash
sudo cp dayz-server.service /etc/systemd/system/
cp update.sh /data/dayz
chcon -t bin_t /data/dayz/update.sh
