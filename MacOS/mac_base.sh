# install multiple software
function brew_install() {
    for i in $*; do
        if ! brew ls --versions $i >/dev/null; then
            brew install "$i"
        else
            echo "You have installed $i"
        fi
    done
}

# root cause for "\ ": https://unix.stackexchange.com/questions/129072/whats-the-difference-between-and
function brew_cask() {
    for i in "$@"; do
        if [[ ! -e /Applications/$i.app ]]; then
            brew cask install $(echo "$i" | sed 's/\ /-/g')
        else
            echo "You have installed $i"
        fi
    done
}
