#!/bin/sh 

ROOT="$3" 

# // fix 
if [ -z "${ROOT}" ] || [ "${ROOT}" = "/" ]; then ROOT=""; fi 

# Backup Original 
sudo cp -f "${ROOT}/etc/authorization" "${ROOT}/etc/authorization.original" 

# Unlock System Preferences 
sudo /usr/libexec/PlistBuddy -c "Add rights:system.preferences:\"group\" 
string netaccounts" "${ROOT}/etc/authorization" 

# Allow Date & Time 
#sudo /usr/libexec/PlistBuddy -c "Add 
#rights:system.preferences.datetime:\"group\" string netaccounts" 
#"${ROOT}/etc/authorization" 

# Allow Network 
sudo /usr/libexec/PlistBuddy -c "Add 
rights:system.preferences.network:\"group\" string netaccounts" 
"${ROOT}/etc/authorization" 

# Allow Print 
sudo /usr/libexec/PlistBuddy -c "Add 
rights:system.preferences.print:\"group\" string netaccounts" 
"${ROOT}/etc/authorization" 

# Allow Energy Saver 
#sudo /usr/libexec/PlistBuddy -c "Add 
#rights:system.preferences.energysaver:\"group\" string netaccounts" 
#"${ROOT}/etc/authorization" 

# Permissions 
sudo chown root:wheel "${ROOT}/etc/authorization" 
sudo chmod 644 "${ROOT}/etc/authorization" 

exit 0 
