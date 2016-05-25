#!/bin/sh 

#This will bless the computer to boot to JSS netboot server on specified host. This is only on next reboot. Reboot command already set.
#change IP address for actual IP address in production
sudo bless --verbose --netboot --booter "tftp://en1@10.131.92.24/NetBoot/NetBootSP0/Casper.nbi/i386/booter" --kernelcache "tftp://10.131.92.24/NetBoot/NetBootSP0/Casper.nbi/i386/x86_64/kernelcache" --options "rp=nfs:10.131.92.24:/private/tftpboot/NetBoot/NetBootSP0:Casper.nbi/Netboot.dmg" --nextonly

Reboot