#!/bin/bash
source of.env
cd $ANDROID_ROOT
export ALLOW_MISSING_DEPENDENCIES=true
export LC_ALL="C"
export TW_THEME=portrait_hdpi
source build/envsetup.sh
lunch twrp_guamp-eng
mka recoveryimage
