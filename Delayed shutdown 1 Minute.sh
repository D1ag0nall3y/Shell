#!/bin/sh
#Restart Computer after 3 minutes with warning

jamf displayMessage -message "Your Computer will shutdown in 1 minute, please save any work and power your machine back on manually after it shuts down"

sudo shutdown -h +1