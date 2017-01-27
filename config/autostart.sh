#!/bin/bash

setxkbmap es

#Maven
#export MAVEN_HOME=/opt/apache-maven-3.2.5
#export PATH=${PATH}:/opt/apache-maven-3.2.5/bin;
#de prueba y error tenemos que definir las opciones, si hacen falta
export MAVEN_OPTS=" -Djava.awt.headless=true "

#ANT
#export ANT_HOME=/opt/ant
#export PATH=${PATH}:/opt/ant/bin:

#sonar
#export PATH=${PATH}:/opt/sonar-runner-2.4/bin:

#Groovy
#export GROOVY_HOME=/opt/groovy
#export PATH=${PATH}:/opt/groovy/bin/:

if [ -f ~/firstRun.sh ] ; then
	mv firstRun.sh firstRun_running.sh
	bash firstRun_running.sh
	mv firstRun_running.sh firstRun_runned.sh
fi
