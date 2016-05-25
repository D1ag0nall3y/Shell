#!/bin/bash
# Written by: Josh Turnage
# 05/25/16


/usr/local/bin/setregproptool -c

if [ $? == 0 ] ; then
echo "Firmware password is already set"

exit 0
else echo "Firmware Password has not yet been set, Setting Now"

/usr/local/bin/setregproptool -m command -p "firmwarepasswordtobeset"

fi

exit 