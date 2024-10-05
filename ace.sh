#!/bin/bash

ace() {
    local opt
    while getopts :a opt; do
        case "$opt" in
            a) git add . ;;
            *) echo "Usage: ace [-a] <commit message>" >&2; exit 1 ;;
        esac
    done
    shift $((OPTIND - 1))
    git commit -a -m "$@"
}
