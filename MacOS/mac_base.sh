# install multiple software
function brew_install() {
    for i in $*
    do
        if ! brew ls --versions $i > /dev/null; then
            brew install $i
        else
            echo "You have installed $i"
        fi
    done
}

function brew_cask() {
    for i in $*
    do
        if [[ ! -e /usr/local/bin/$i ]]; then
            brew cask install $i
        else
            echo "You have installed $i"
        fi
    done
}
