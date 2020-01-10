#!/bin/bash
cd $HOME
mkdir cygnus
cd cygnus
rm -rf  hardware/qcom-caf/msm8996/audio lineage-sdk/ packages/apps/ExactCalculator packages/apps/LineageParts/ packages/apps/Nfc/ packages/apps/Settings/ packages/apps/SetupWizard/ packages/apps/Trebuchet/ system/netd/ system/vold/ build/make/
repo init -u git://github.com/cygnus-rom/manifest.git -b ten-aosp
repo sync -j$(nproc --all) --force-sync --no-tags --no-clone-bundle --prune --optimized-fetch
mv $HOME/scripts/updates.sh $PWD
bash updates.sh

