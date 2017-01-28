#!/bin/bash

setxkbmap es

if [ $? -eq 0 ] && [ -f ~/firstRun.sh ] ; then
	#run only in X session and only once
	mv firstRun.sh firstRun_running.sh
	bash firstRun_running.sh
	mv firstRun_running.sh firstRun_runned.sh
fi


#Maven
#no need if installed by apt-get
#export MAVEN_HOME=/opt/apache-maven-3.2.5
#export PATH=${PATH}:/opt/apache-maven-3.2.5/bin;

export MAVEN_OPTS=" -Djava.awt.headless=true "

#ANT
#no need if installed by apt-get
#export ANT_HOME=/opt/ant
#export PATH=${PATH}:/opt/ant/bin:

#sonar
#export PATH=${PATH}:/opt/sonar-runner-2.4/bin:

#Groovy
#no need if installed by apt-get
#export GROOVY_HOME=/opt/groovy
#export PATH=${PATH}:/opt/groovy/bin/:

java -jar /opt/selenium/selenium-server-standalone-3.0.1.jar 

#mvn archetype:generate -DarchetypeGroupId=ru.stqa.selenium -DarchetypeArtifactId=webdriver-testng-archetype -DarchetypeVersion=3.0 -DgroupId=com.hotelbeds -DartifactId=test

