#!/bin/bash
source of.env
sudo rm /bin/python
sudo ln -s /bin/python2 /bin/python
cd $ANDROID_ROOT
export ALLOW_MISSING_DEPENDENCIES=true
export LC_ALL="C"
export TW_THEME=portrait_hdpi
source build/envsetup.sh
. build/envsetup.sh
lunch twrp_guamp-eng
mka recoveryimage
