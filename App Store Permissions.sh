#!/bin/sh
# Written by Josh Turnage
# 03-05-2-14

# current user is $3
set -x


#remove contents of App Store folder
rm -rfv /Library/Application\ Support/App\ Store/


#remove permissions then set permissions
chmod ugo= /Library/Application\ Support/App\ Store
chmod -R 575 /Library/Application\ Support/App\ Store


#Set Ownernship of App Store Folder
chown -R root:admin /Library/Application\ Support/App\ Store

