#!/bin/bash

serialnumber=$(system_profiler SPHardwareDataType | grep 'Serial Number (system)' | awk '{print $NF}')

compname=$(awk -F, -v serialnumber=$serialnumber '$0 ~ serialnumber {print $5}' /usr/local/bin/MBAnames.csv)

#uncomment the following line to echo the name that will be set for the computer
echo $compname >> /var/log/jamf.log

#uncomment the following line to enable setting the computer name
scutil --set ComputerName "$compname"
scutil --set LocalHostName "$compname"
scutil --set HostName "$compname"
dscacheutil -flushcache
#echo "result of last command:" $? >> /var/log/jamf.log

exit $?