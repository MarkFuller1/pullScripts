#!/usr/bin/bash
pwd
if [[ -d "/opt/prod/raspi/KittyKam" ]]; then
    cd KittyKam
    pwd
    git pull origin master
    else
    git clone https://github.com/MarkFuller1/KittyKam.git
    cd KittyKam
    pwd
fi

sudo /usr/bin/mvn clean compile package 
