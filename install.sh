#!/bin/bash
set -Eeuo pipefail

CURRENT_DIRECTORY=$( dirname -- "$( readlink -f -- "$0"; )"; )
DEKTOP_ENTRY=~/.local/share/applications/uwu.desktop
EXEC=~/Documents/uwu/uwu.sh
ICON=~/Documents/uwu/uwu.png
SOUNDS=~/Documents/uwu/sounds

echo Create desktop entry
cp $CURRENT_DIRECTORY/uwu.desktop.template $DEKTOP_ENTRY
sed -i "s|<exec>|$EXEC|" $DEKTOP_ENTRY
sed -i "s|<icon>|$ICON|" $DEKTOP_ENTRY

echo Coping files to: ~/Documents/uwu
mkdir ~/Documents/uwu
cp $CURRENT_DIRECTORY/uwu.sh $EXEC
cp $CURRENT_DIRECTORY/uwu.png $ICON
cp -r $CURRENT_DIRECTORY/sounds $SOUNDS

echo Success!
