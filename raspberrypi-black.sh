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

sudo /usr/bin/java -jar -Dspring.profiles.active=prod target/IThoughtILearned-0.0.1-SNAPSHOT.jar
