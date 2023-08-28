#!/usr/bin/bash
pwd
if [[ -d "/opt/prod/raspi/HomeInfrastructure" ]]; then
    cd HomeInfrastructure
    pwd
    git pull origin master
    else
    git clone https://github.com/MarkFuller1/HomeInfrastructure.git
    cd HomeInfrastructure
    pwd
fi

sudo /usr/bin/mvn clean compile package 

sudo /usr/bin/java -jar -Dspring.profiles.active=prod target/HomeInfrastructure-1.0-SNAPSHOT.jar
