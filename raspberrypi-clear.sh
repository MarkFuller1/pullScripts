#!/usr/bin/bash
if [[ -d "/opt/prod/raspi/Personal-Website" ]]; then
    cd Personal-Website
    git pull origin master
    else
    git clone https://github.com/MarkFuller1/Personal-Website.git
    cd Personal-Website
fi

npm i --legacy-peer-deps
npm start &
