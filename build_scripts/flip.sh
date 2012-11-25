#!/bin/sh
clear

# $1 = variables passed from menu.sh , and is used to control what functions of this script
# are executed

# $2 = auto generated directory location for all files in the kitchen, generated from menu.sh


# Reset source/directory to unmodified code from reference_source/
cd $2/source
rm -f .config

if [ "$3" = "NORMAL" ]; then
  cp .config_normal .config
else
  cp .config_lte .config
fi