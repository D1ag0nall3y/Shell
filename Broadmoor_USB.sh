#Formats drive "Broadmoor"
diskutil reformat /Volumes/Broadmoor*

#Restores specified disk image to volume
sudo asr restore --source [Replace with DMG path] --target /Volumes/Broadmoor

#Restoring from source gives volume the name of the source minus the 
#extension. For this, we should rename so we can easily Erase the 
#next time this drive is plugged in.
diskutil rename Service* Broadmoor
