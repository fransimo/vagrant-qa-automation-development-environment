#!/bin/bash

SCRIPT=`realpath $0`
SCRIPTPATH=`dirname $SCRIPT`

for f in $(find $SCRIPTPATH/updates -type d | sort ) ; do
	if [ -f $f/update_script.sh ] && [ ! -f $f/runned.txt ] ; then
		echo Running $f/update_script.sh
		bash $f/update_script.sh
		if [ $? -eq 0 ] ; then
                        touch $f/runned.txt
                fi
	fi
done
