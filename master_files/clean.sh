#!/bin/bash

#
# Description: clean the app
#

echo "unmount mnt:"
sudo umount ./mnt
echo "close nbd0:"
sudo nbd-client -d /dev/nbd0
echo "sleeps before cleaning so that master can close plugins dir..."
sleep 5
echo "make clean:"
make clean
rm ./plugins/ ./mnt
echo "done! all clear."