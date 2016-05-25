#!/bin/sh
#Restart Computer after 1 minutes with warning

jamf displayMessage -message "Your Computer will restart in 1 minute, please save any work and click OK"


sleep 60

sudo reboot