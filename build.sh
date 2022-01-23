#!/bin/bash
source of.env
cd $ANDROID_ROOT
source build/envsetup.sh
lunch twrp_guamp-eng
m -j2 recoveryimage
