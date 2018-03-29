#!/bin/bash
# Configure keyboard mappings

SCRIPT=`realpath $0`
SCRIPTPATH=`dirname $SCRIPT`

if [ $DISPLAY == ":0" ] ; then
	gsettings set org.gnome.desktop.input-sources sources "[('xkb', 'es'), ('xkb', 'il'), ('xkb', 'us')]"
	exit 0
else
	exit 1
fi




