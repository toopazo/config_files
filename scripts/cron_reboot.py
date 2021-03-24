#!/usr/bin/env python

import datetime
import os


if __name__ == "__main__":
    filename = '/tmp/cron_reboot.log'
    fd = open(filename, 'a')
    udate = datetime.datetime.now()
    arg = 'time is %s \n' % udate
    fd.write(arg)

    cmd = "ls -l"
    resp = os.system(cmd)
    arg = 'cmd %s returned %s \n' % (cmd, resp)
    fd.write(arg)

    cmd = "dropbox stop && dbus-launch dropbox start >> /tmp/cron_reboot.log"
    resp = os.system(cmd)
    arg = 'cmd %s returned %s \n' % (cmd, resp)
    fd.write(arg)



