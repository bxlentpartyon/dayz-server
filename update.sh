#! /bin/bash
/home/opc/steamcmd/steamcmd.sh +force_install_dir /data/dayz/ +login bxlentpartyon +app_update 223350 validate +workshop_download_item 221100 1559212036 +workshop_download_item 221100 1828439124 +workshop_download_item 221100 1854626456 +workshop_download_item 221100 1646187754 +quit
rsync -avHx /home/opc/dayz_server_git/dayz_root /data/dayz
