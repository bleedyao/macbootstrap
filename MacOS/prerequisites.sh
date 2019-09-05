#!/usr/bin/env bash

# install brew
if [[ ! -e /usr/local/bin/brew ]]; then
    /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
else
    echo "You have installed brew"
fi

# install git
if [[ -e /usr/local/bin/git ]]; then
    echo "You have installed git"
else
    brew install git
fi
