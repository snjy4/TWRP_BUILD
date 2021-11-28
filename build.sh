#!/bin/bash
sudo rm /bin/python
sudo ln -s /bin/python2 /bin/python
source of.env && \
cd /home/runner/work/twrp/ && \
. build/envsetup.sh && \
lunch twrp_guamp-eng && \
mka recoveryimage
