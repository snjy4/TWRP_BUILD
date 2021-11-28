#!/bin/bash
sudo rm /bin/python
sudo ln -s /bin/python2 /bin/python
source of.env && \
cd $ANDROID_ROOT && \
. build/envsetup.sh && \
lunch twrp_guamp-eng && \
mka recoveryimage
