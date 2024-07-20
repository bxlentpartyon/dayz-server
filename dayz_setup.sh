#! /bin/bash

# CF key
cp /data/dayz/steamapps/workshop/content/221100/1559212036/keys/Jacob_Mango_V3.bikey /data/dayz/keys

# VPP admin tools key
cp /data/dayz/steamapps/workshop/content/221100/1828439124/keys/VPP.bikey /data/dayz/keys

# Build anywhere key
#cp /data/dayz/steamapps/workshop/content/221100/1854626456/Keys/BorizzK.bikey /data/dayz/keys

# symlinks for mods
ln -s /data/dayz/steamapps/workshop/content/221100/1559212036 /data/dayz/1559212036
ln -s /data/dayz/steamapps/workshop/content/221100/1828439124 /data/dayz/1828439124
#ln -s /data/dayz/steamapps/workshop/content/221100/1854626456 /data/dayz/1854626456

# set up systemd service
sudo cp dayz-server.service /etc/systemd/system/
