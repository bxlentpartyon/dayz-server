# Notes

## Generating passwords

openssl rand -base64 14

## Setting up RCon

I had to place the RCon config here:

/data/dayz/battleye/battleye/beserver_x64.cfg

It was not working when placed at either of these locations:

/data/dayz/battleye/BEServer_x64.cfg
/data/dayz/battleye/beserver_x64.cfg

# To Do

## Fix selinux

I currently have manually chcon'd update.sh and DayZServer to file type bin_t to get the
systemd service working.  This needs to be set up more permanently.

## Save off config stuff

I need to create a git repo with my config files/scripts.

## Automate server restarts

-The server currently doesn't have any restarts set up.  This definitely needs to be fixed.-

I think this is fixed - needs to be verified.

# Useful Links

## MOTD/Server restart config

https://forums.dayz.com/topic/239635-dayz-server-files-documentation/?tab=comments#comment-2414445
