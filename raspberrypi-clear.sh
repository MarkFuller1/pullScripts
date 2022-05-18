#!/usr/bin/bash

y | rm Personal-Website -rf
git clone https://github.com/MarkFuller1/Personal-Website.git

cd Personal-Website
npm i
npm start &
