#!/bin/sh
# current user is $3

# Written by: Josh Turnage
# 05/25/16

# move to Applications directory
cd /Applications

# Find and delete all applications listed. Application full name required. 
#currently set to print results. Replace with "delete" to actually remove the contents.
#Each app is separated by a pike "|"

find . -maxdepth 1 -not -regex "Adobe Reader.app|Google Drive.app|Reminders.app|App Store.app|Image Capture.app|Safari.app|Automator.app|Keynote.app|Self Service.app|Calculator.app|Launchpad.app|Stickies.app|Calendar.app|LockDown Browser.app|System Preferences.app|Chess.app|Mail.app|TI Connect|Contacts.app|Maps.app|TextEdit.app|DVD Player.app|Messages.app|Time Machine.app|Dashboard.app|Microsoft Office 2011|Utilities|Dictionary.app|Mission Control.app|VLC.app|FaceTime.app|Notes.app|iBooks.app|Firefox.app|Numbers.app|iMovie.app|Font Book.app|Pages.app|Game Center.app.app|Photo Booth.app|iTunes.app|GarageBand.app|Preview.app|Google Chrome.app|QuickTime Player.app" -print