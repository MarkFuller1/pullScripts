#!/usr/bin/bash
if [[ -d "/opt/prod/raspi/KittyProcessor" ]]; then
    cd KittyProcessor
    git pull origin master
    else
    git clone https://github.com/MarkFuller1/KittyProcessor.git
    cd KittyProcessor
fi

npm i --legacy-peer-deps
npm start 
