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
    cd ~/github/dotfiles
    bash install.sh
    cd ~/github/install-course-programs
    python3 install.py
    cd ~/github/node_install
    bash install.sh
}


if [ ! -d "~/github" ] 
then
    mkdir ~/github
fi

clone
install

