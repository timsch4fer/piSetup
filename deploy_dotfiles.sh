#!/bin/bash
mkdir temp
cd temp
temp_fodler=$(pwd)
git clone git@github.com:timsch4fer/piSetup.git
touch piSetup/scripts/peter
if [[ ! -d ~/scripts ]]
then
    mv scripts ~/
else
    cd ~/scripts
    for file in $temp_fodler/piSetup/scripts/*
    do
        base=$(basename $file)
        if [[ -f $base ]]
        then
            echo $base already exists!
        else
            echo $base does not exist!
            cp $file ~/scripts
            echo "$file -> ~/scripts/$base"
        fi
    done
fi

cd $temp_fodler/piSetup

# $0 = src 
# $1 = dest
reader () {
    while true; do
        read -p "Do you want to overwrite $2? [y/n] " yn
        case $yn in
            [Yy]* ) echo "$temp_fodler/piSetup/$1 -> $2"; mv $1 $2; break;;
            [Nn]* ) echo okaydokey; break;;
        esac
    done
}

[[ -f ~/.bashrc ]] && reader .bashrc ~/.bashrc
[[ -f ~/.config/nvim/init.vim ]] && reader init.vim ~/.config/nvim/init.vim 

rm -rf $temp_fodler


