#!/bin/sh
/usr/sbin/diskutil unmount /dev/disk0s3
/usr/sbin/asr adjust -target /dev/disk0s3 -settype Apple_Boot