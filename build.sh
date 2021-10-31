#!/bin/bash
source of.env
sudo apt-get install -y python2 python2-dev
sudo apt install -y make
sudo rm /bin/python
sudo ln -s /bin/python2 /bin/python
sudo apt-get update
export ALLOW_MISSING_DEPENDENCIES=true
export LC_ALL="C"
export FOX_USE_TWRP_RECOVERY_IMAGE_BUILDER=1
export OF_DISABLE_MIUI_SPECIFIC_FEATURES=1
cd $ANDROID_ROOT
source build/envsetup.sh
. /build/envsetup.sh
lunch twrp_guamp-eng
make -j$(nproc --all) recoveryimage
