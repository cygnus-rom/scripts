#!/bin/bash
cd $HOME
mkdir cygnus
cd cygnus
repo init -u git://github.com/cygnus-rom/manifest.git -b ten-aosp
repo sync -j$(nproc --all) --force-sync --no-tags --no-clone-bundle --prune --optimized-fetch


