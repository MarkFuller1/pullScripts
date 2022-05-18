#!/usr/bin/bash

y | rm PersonalWebsite -rf
git clone https://github.com/MarkFuller1/Personal-Website-PostService.git

cd Personal-Website-PostService
sudo /usr/bin/mvn clean compile package 
echo "done compile package"
echo "start server"
sudo /usr/bin/java -jar -Dspring.profiles.active=prod target/node-0.0.1-SNAPSHOT.jar
