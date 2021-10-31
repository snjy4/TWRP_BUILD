#!/bin/bash
source of.env
sudo rm /bin/python
sudo ln -s /bin/python2 /bin/python
sudo apt-get update
sudo apt-get install -y python2 python2-dev
sudo apt install -y make
cd ~
sudo apt install git aria2 -y
git clone https://gitlab.com/OrangeFox/misc/scripts
cd scripts
sudo bash setup/android_build_env.sh
sudo bash setup/install_android_sdk.sh
mkdir ~/OrangeFox_10
cd ~/OrangeFox_10
rsync rsync://sources.orangefox.download/sources/fox_10.0 . --progress -a
mkdir -p device/motorola/guamp
https://github.com/mistersmee/android_device_motorola_cebu.git -b android-11 device/motorola/guamp
export ALLOW_MISSING_DEPENDENCIES=true
export LC_ALL="C"
export FOX_USE_TWRP_RECOVERY_IMAGE_BUILDER=1
export OF_DISABLE_MIUI_SPECIFIC_FEATURES=1
source build/envsetup.sh
lunch twrp_guamp-eng
make -j$(nproc --all) recoveryimage
