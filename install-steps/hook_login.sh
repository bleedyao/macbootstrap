if [[ ! -d $HOME/Library/LaunchAgents ]]; then
    mkdir $HOME/Library/LaunchAgents
fi

sudo cp config/com.bleedyao.onlogin.plist ~/Library/LaunchAgents/
sudo launchctl load ~/Library/LaunchAgents/com.bleedyao.onlogin.plist
