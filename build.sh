#!/bin/bash
source of.env
sudo rm /bin/python
sudo ln -s /bin/python2 /bin/python
cd $ANDROID_ROOT
source build/envsetup.sh
export ALLOW_MISSING_DEPENDENCIES=true
export LC_ALL="C"
lunch twrp_guamp-eng
#mkdir -p /home/runner/work/twrp/out/target/product/yggdrasil/system/etc
#touch /home/runner/work/twrp/out/target/product/yggdrasil/system/etc/ld.config.txt
mka recoveryimage 
