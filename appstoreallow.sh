#!/bin/bash

# Written by: Josh Turnage
# 05/25/16

#Disallows app store, but keeps updates available
defaults write /Library/Preferences/com.apple.appstore restrict-store-softwareupdate-only -bool no

#Allows non-admin checking of, and installing system updates
#sudo security authorizationdb write com.apple.SoftwareUpdate.scan allow
#sudo security authorizationdb write system.install.apple-software allow

#Trying non-admin checking of, and installing system updates with PlistBuddy

sudo /usr/libexec/PlistBuddy -c 'Set :rights:com.apple.SoftwareUpdate.scan:rule allow' /etc/authorization
sudo /usr/libexec/PlistBuddy -c 'Set :rights:system.install.apple-software:rule allow' /etc/authorization

