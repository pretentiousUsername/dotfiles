#!/usr/bin/env bash

# This is just a script to help my forgetful ass update git submodules and
# all that.

help() {
    echo "-a    absorb submodule into a directory"
    echo "-h    display this help"
}

add_submodule() {
    git submodule add ./$1 $1
}

submodule_absorption() {
    git submodule absorbgitdirs $1
    git config -f .gitmodules submodule.$1.url \
        https://github.com/pretentiousUsername/$2
}


submodule=$1
add_submodule $submodule

while getopts ":haA" option; do
    case $option in
        h)
            help
            exit 0
            ;;
        # a)
        #     echo "Adding submodule..."
        #     submodule=${OPTARG}
        #     # add_submodule $submodule
        #     echo "Added and absorbed submodules."
        #     exit 0
        #     ;;
        a)
            echo "Absorbing submodule..."
            repo=${OPTARG}
            submodule_absorption $submodule $repo
            echo "Absorbed submodule."
            exit 0
            ;;
        # *)
        #     echo "Invalid option."
        #     help
        #     exit 0
        #     ;;
    esac
done

