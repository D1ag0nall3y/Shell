#!/bin/bash
#Remove Chrome Extensions

lastUser=`defaults read /Library/Preferences/com.apple.loginwindow lastUserName`
rm -r /Users/$lastUser/Library/Application\ Support/Google/Chrome/Default/Extensions
rm -r /Users/$lastUser/Library/Application\ Support/Google/Chrome/Default/Preferences

mkdir /Users/$lastUser/Library/Application\ Support/Google/Chrome/Default/Extensions
mkdir /Users/$lastUser/Library/Application\ Support/Google/Chrome/Default/Preferences
