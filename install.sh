#/!/bin/bash


function check {
    if [ ! -d $1 ]
    then
        git clone $1
    fi
}

function clone {
    cd ~/github
    check https://github.com/cschambers2101/dotfiles.git
    check https://github.com/cschambers2101/install-course-programs.git
    check https://github.com/cschambers2101/node_install.git
}

function install {
    cd ~/src/dotfiles
    bash install.sh
    cd ~/src/install-course-programs
    python3 install.py
    cd ~/src/node_install
    bash install.sh
}


if [ ! -d "~/src" ] 
then
    mkdir ~/src
fi

clone
install

