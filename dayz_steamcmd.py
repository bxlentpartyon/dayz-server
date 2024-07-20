#! /usr/bin/env python

import pexpect
import os

home_path = '/home/opc/'

def main():
    print('Installing DayZ Server Standalone')
    child = pexpect.spawn(os.path.join(home_path, 'steamcmd/steamcmd.sh'))
    child.expect('Steam>')
    child.sendline('force_install_dir /data/dayz')
    child.expect('Steam>')
    child.sendline('login bxlentpartyon')
    child.expect('Steam>')
    child.sendline('app_update 223350')
    child.interact()
    child.expect('Steam>')
    child.sendline('workshop_download_item 221100 1559212036')
    child.interact()
    child.expect('Steam>')
    child.sendline('workshop_download_item 221100 1828439124')
    child.interact()
    if child.isalive():
        print('Child still alive - closing...')
        child.close()
    else:
        print('Child exited gracefully!')

if __name__ == '__main__':
    main()
