#!/bin/bash

SCRIPT=`realpath $0`
SCRIPTPATH=`dirname $SCRIPT`

sudo bash $SCRIPTPATH/init_as_root.sh
