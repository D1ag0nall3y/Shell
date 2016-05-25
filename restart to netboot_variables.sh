#!/bin/bash

### Global Variables ###
server="10.131.92.24"
sharepoint="NetBootSP0"

### Fuctions ###

reimage () {

# Determine Arch value and point to proper netboot image

setName="Casper.nbi"
imageName="NetBoot.dmg"

protocol="nfs"
nextboot="--nextonly"

/usr/sbin/bless --netboot --booter "tftp://${server}/NetBoot/${sharepoint}/${setName}/i386/booter" --kernelcache "tftp://${server}/NetBoot/${sharepoint}/${setName}/i386/kernelcache" --options "rp=${protocol}:${server}:/private/tftpboot/NetBoot/${sharepoint}:${setName}/${imageName}" $nextboot

reboot
}

reimage