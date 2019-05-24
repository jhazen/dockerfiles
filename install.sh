#!/bin/bash

# All my dockerfiles - setup as follows:
# install.sh (all|{name})
# - all installs all dockerfiles
# - {name} installs just dockerfile based on name, i.e. ctf
#docker build -t ctf .

if [ $# -ne 1 ]; then
    echo "Usage: $0 (all|{name})"
    echo
    echo "Options:"
    echo -e "\tall\tInstall all dockerfiles found"
    echo -e "\t{name}\tInstall based on name (i.e. 'ctf')"
    exit 1
fi

O=`pwd`
H=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )
cd $H

if [ $1 = "all" ]; then
    for i in `find $H -type d -mindepth 1 | grep -v ".git"`; do
        echo $i
        cd $i
        docker build -t $i .
        cd ..
    done
elif [ ! -d $1 ]; then
    echo "$1 is not a directory"
else
    cd $1
    docker build -t $1 .
    cd -
fi

cd $O
