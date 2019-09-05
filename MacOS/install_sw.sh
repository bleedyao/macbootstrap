#!/usr/bin/env bash

. ./MacOS/mac_base.sh

brew_install python3 gnu-sed lrzsz coreutils redis cmake gawk
brew_install autojump wget nvm exiv2 ssh-copy-id imagemagick
brew_install catimg gpg icdiff scmpuff fzf fd the_silver_searcher
brew_install nvim exiftool archey ranger
brew_install git-lfs && git lfs install
$(brew --prefix)/opt/fzf/install --all

if [[ ! -e ~/.oh-my-zsh ]]; then
    curl -L https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh | sh
fi