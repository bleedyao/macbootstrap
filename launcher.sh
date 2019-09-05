#!/usr/bin/env bash
# debug shell
set -euxo pipefail

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