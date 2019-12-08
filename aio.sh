#!/bin/bash
cd $HOME
mkdir cygnus
cd cygnus
repo init -u git://github.com/cygnus-rom/manifest.git -b default
repo sync -j$(nproc --all) --force-sync --no-tags --no-clone-bundle --prune --optimized-fetch
git clone https://github.com/cygnus-rom/scripts.git
mv $HOME/scripts/updates.sh $PWD
bash updates.sh

