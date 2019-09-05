# Usage: mv $1 to $1_backup
function backup_file() {
    if [ $# != 1 ]; then
        echo "Usage: backup_file pat_to_file"
    fi

    if [[ -e $1 ]]; then
        mv $1 $1"_backup"
    fi
}

# copy to path and create this path if not exist
function bs_cp() {
    if [ $# != 2 ]; then
        echo "Usage: bs_cp file destination"
    fi

    test -d "$2" || mkdir -p "$2" && cp "$1" "$2"
}