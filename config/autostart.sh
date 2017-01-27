#!/bin/bash

setxkbmap es

export FRAN=hola

if [ -f ~/firstRun.sh ] ; then
	bash firstRun.sh
	mv firstRun.sh firstRun_runned.sh
fi
