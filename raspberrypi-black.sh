#!/usr/bin/bash
if [[ -d "/opt/prod/raspi/Personal-Website-PostService" ]]; then
    cd Personal-Website-PostService
    git pull origin master
    else
    git clone https://github.com/MarkFuller1/Personal-Website-PostService.git
    cd Personal-Website-PostService
fi

sudo /usr/bin/mvn clean compile package 

sudo /usr/bin/java -jar -Dspring.profiles.active=prod target/IThoughtILearned-0.0.1-SNAPSHOT.jar
