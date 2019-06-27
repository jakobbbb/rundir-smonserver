#!/bin/bash
# this script should produce 2 columns with a PID and a port number on 127.0.0.1, e.g.
# 8680 22192
#
# lsof also needs super user rights to list all relevant connections, so this
# script probably needs a sudoers entry (start 'visudo'), e.g.:
#   iwes ALL = NOPASSWD: /home/iwes/bin/ssh_lsof.sh
while read -r line
do
  echo $line | cut -d " " -f2,9 |sed -r -e "s/127.0.0.1:([0-9a-z]+).*/\1/"
done < <(lsof -i4 -n |grep sshd |grep LISTEN |grep iwes)
