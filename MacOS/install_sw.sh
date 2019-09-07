#!/usr/bin/env bash

. ./MacOS/mac_base.sh

brew_install python3 gnu-sed lrzsz coreutils redis cmake gawk \
autojump wget nvm exiv2 ssh-copy-id imagemagick \
catimg gpg icdiff scmpuff fzf fd the_silver_searcher \
nvim exiftool archey ranger \
git-lfs && git lfs install \ 
$(brew --prefix)/opt/fzf/install --all

brew_cask iTerm SourceTree WeChat Google\ Chrome Google\ web\ designer

if [[ ! -e ~/.oh-my-zsh ]]; then
    curl -L https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh | sh
fi