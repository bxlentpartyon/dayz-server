# Notes

## Generating passwords

openssl rand -base64 14

## Setting up RCon

I had to place the RCon config here:

/data/dayz/battleye/battleye/beserver_x64.cfg

It was not working when placed at either of these locations:

/data/dayz/battleye/BEServer_x64.cfg
/data/dayz/battleye/beserver_x64.cfg

## Port Forwarding

You not only need to forward ports with firewall-cmd, but you also need to set up an OCI ingress rule on your VNIC/Subnet.

## Adding mods

You need to do the following to add a mod:

- Add the mod to the list of stuff to download in update.sh
- Download the mod
- Create a symlink to the mod dir in /data/dayz
- Add the mod dir to the -mod argument in dayz-server.service
- Copy or symlink the .bikey file for the mod into /data/dayz/keys

# To Do

## Save off config stuff

I need to create a git repo with my config files/scripts.

# Done

## Fix selinux

### Issue

I currently have manually chcon'd update.sh and DayZServer to file type bin_t to get the
systemd service working.  This needs to be set up more permanently.

The commands for this are:

chcon -t bin_t /data/dayz/update.sh
chcon -t bin_t /data/dayz/DayZServer

### Solution

Ran:

```
sudo semanage fcontext -a -t bin_t /data/dayz/update.sh
sudo semanage fcontext -a -t bin_t /data/dayz/DayZServer
sudo restorecon -Rv /data
```

## Automate server restarts

### Issue

The server currently doesn't have any restarts set up.  This definitely needs to be fixed.

### Solution

Something in the main server config.  I don't remember exactly.

# Useful Links

## MOTD/Server restart config

https://forums.dayz.com/topic/239635-dayz-server-files-documentation/?tab=comments#comment-2414445
