#!/bin/bash
# Written by: Josh Turnage
# 05/25/16

#Require admin name and password to toggle Wifi on or off

#Backup the original authorization file
sudo /bin/cp /etc/authorization /etc/authorization.original.backup


if [[ "$OS" == "10.6" ]]; then
		#Modify /etc/authorization to allow any member of the everyone group access to unlock preferences
		sudo /usr/libexec/PlistBuddy -c "Set :rights:system.preferences:group everyone" /etc/authorization
		sudo /usr/libexec/PlistBuddy -c "Set :rights:system.preferences:shared true" /etc/authorization
		echo "Given rights to the everyone group to unlock secure system preferences for OS $OS..."
else	
		# Unlock System Preferences for non admins.
		sudo /usr/libexec/PlistBuddy -c 'Set :rights:system.preferences:group everyone' /etc/authorization
		# Unlock Accessibiltity preference pane
		#sudo /usr/libexec/PlistBuddy -c 'Set :rights:system.preferences.accessibility:group everyone' /etc/authorization
		# Unlock Accounts preference pane		
		#sudo /usr/libexec/PlistBuddy -c 'Set :rights:system.preferences.accounts:group everyone' /etc/authorization
		# Unlock Date & Time preference pane		
		#sudo /usr/libexec/PlistBuddy -c 'Set :rights:system.preferences.datetime:group everyone' /etc/authorization
		# Unlock Energy Saver preference pane		
		#sudo /usr/libexec/PlistBuddy -c 'Set :rights:system.preferences.energysaver:group everyone' /etc/authorization
		# Unlock Network Settings preference pane
		sudo /usr/libexec/PlistBuddy -c 'Set :rights:system.preferences.network:group everyone' /etc/authorization
		sudo /usr/libexec/PlistBuddy -c 'Set :rights:system.services.systemconfiguration.network:rule allow' /etc/authorization
		# Unlock Parental Controls preference pane		
		#sudo /usr/libexec/PlistBuddy -c 'Set :rights:system.preferences.parental-controls:group everyone' /etc/authorization
		# Unlock Print & Scan Preference pane
		sudo /usr/libexec/PlistBuddy -c 'Set :rights:system.preferences.printing:group everyone' /etc/authorization
		# Unlock Security Preference pane
		#sudo /usr/libexec/PlistBuddy -c 'Set :rights:system.preferences.security:group everyone' /etc/authorization
		# Unlock Sharing Preference pane
		#sudo /usr/libexec/PlistBuddy -c 'Set :rights:system.preferences.sharing:group everyone' /etc/authorization
		# Unlock Software Update Preference pane
		#sudo /usr/libexec/PlistBuddy -c 'Set :rights:system.preferences.softwareupdate:group everyone' /etc/authorization
		# Unlock Startup Disk Preference pane
		#sudo /usr/libexec/PlistBuddy -c 'Set :rights:system.preferences.startupdisk:group everyone' /etc/authorization
		# Unlock Time Machine preference pane
		sudo /usr/libexec/PlistBuddy -c 'Set :rights:system.preferences.timemachine:group everyone' /etc/authorization
fi