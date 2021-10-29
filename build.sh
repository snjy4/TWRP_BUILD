#!/bin/bash
source of.env
sudo rm /bin/python
sudo ln -s /bin/python2 /bin/python
cd $ANDROID_ROOT
source build/envsetup.sh
. build/envsetup.sh
export ALLOW_MISSING_DEPENDENCIES=true
export LC_ALL="C"
export TW_THEME=portrait_hdpi
lunch twrp_guamp-eng
make -j$(nproc --all) recoveryimage
