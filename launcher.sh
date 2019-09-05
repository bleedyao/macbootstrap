#!/usr/bin/env bash
# debug shell
set -euxo pipefail

# remove old macbootstrap
if [[ -e ~/.macbootstrap ]]; then
  rm -rf ~/.macbootstrap
fi

# update latest script
git clone --depth=1 -b feature/myBoot https://github.com/bleedyao/macbootstrap.git ~/.macbootstrap
cd ~/.macbootstrap

if [ "$(uname)" = "Darwin" ]; then
    # MacOS
    echo "MacOS"
    . ./MacOS/prerequisites.sh
    . ./MacOS/install_sw.sh
    . ./MacOS/mac_config.sh
else 
    # Linux
    echo "Linux"
fi
