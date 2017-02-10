#!/bin/bash

# Get root
SCRIPT_PATH=`realpath $0`
SCRIPT_PATH=`dirname $SCRIPT_PATH`

HOME_DOT_FILES=$SCRIPT_PATH/home
for f in `find $HOME_DOT_FILES -type f`
do
  echo "Symlinking $f file to $HOME"
  ln -sf $f $HOME
done
