#!/bin/bash
sudo rm /bin/python
sudo ln -s /bin/python2 /bin/python
cd $ANDROID_ROOT
source of.env && \
. build/envsetup.sh && \
lunch twrp_guamp-eng && \
mka recoveryimage
