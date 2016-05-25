#!/bin/bash

# Clear all non local admin accounts script
# Script is based off work at the following webpage:
# http://www.macos.utah.edu/documentation/authentication/dscl.html

# Author: r.purves@arts.ac.uk

# Set up needed variables here

macname=$( scutil --get ComputerName | awk '{print substr($0,length($0)-3,4)}' )
OIFS=$IFS
IFS=$'\n'

# Special section to set up globally exempted user accounts
# You can add more accounts here separated by a space

exempt=( "shortname_of_useraccount" )

exempt[$[${#exempt[@]}]]=`echo $username`

# Find exempt array length

tLen=${#exempt[@]}

# Delete accounts apart from those in the exclusion array

# Read the user account from /users in order.

for Account in `ls /Users`
do

# Does the flag file exist? If so, delete it.

   if [ -f /var/tmp/adminexempt ];
   then
      rm /var/tmp/adminexempt
   fi

# Loop around the exemption array to check current user.

   for (( i=0; i<${tLen}; i++ ));
   do

# Create the exemption flag file if account matches. We do this because of BASH's local variable limitation.

      if [ "${exempt[i]}" == $Account ];
      then
         touch /var/tmp/adminexempt
      fi

   done

# If exempt file doesn't exist, delete the account.

   if [ ! -f /var/tmp/adminexempt ];
   then
      dscl . delete /Users/$Account > /dev/null 2>&1
	  rm -rf /Users/$Account
   fi

# Read the next username.

done

# Let's set IFS back to the way it was.

export IFS=$OIFS

# Clean up any left over flag files

if [ -f /var/tmp/adminexempt ];
then
   rm /var/tmp/adminexempt
fi

# All done!

exit 0