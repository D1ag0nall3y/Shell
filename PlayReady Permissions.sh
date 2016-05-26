#!/bin/sh
# current user is $3
set -x

#check to see if user has netflix file
if [-d "/Library/Application\ Support/Microsoft/PlayReady/mspr.hds" ]; then 
	cp /Library/Application\ Support/Microsoft/PlayReady/mspr.hds /tmp
fi

#Edit permissions on PlayReady folder
chmod -N /Library/Application\ Support/Microsoft/PlayReady

#copy netflix file back to original location
if [-d "/tmp/mspr.hds" ]; then 
	cp /tmp/mspr.hds /Library/Application\ Support/Microsoft/PlayReady/
	
fi

#edited by Josh Turnage - 09/25/14