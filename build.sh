#!/bin/bash
sudo rm /bin/python
sudo ln -s /bin/python2 /bin/python
export ALLOW_MISSING_DEPENDENCIES=true && \
export LC_ALL="C" && \
export TW_THEME=portrait_hdpi && \
source of.env && \
cd /home/runner/work/twrp/ && \
. build/envsetup.sh && \
lunch twrp_guamp-eng && \
mka recoveryimage
