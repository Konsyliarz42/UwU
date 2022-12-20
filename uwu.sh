#!/bin/bash
set -Eeuo pipefail

CURRENT_DIRECTORY=$( dirname -- "$( readlink -f -- "$0"; )"; )
VOLUME=$(amixer get Master | egrep -o '[0-9]{1,3}%')

ls $CURRENT_DIRECTORY/sounds > $CURRENT_DIRECTORY/sounds.txt

amixer sset 'Master' 100%
mpv ${CURRENT_DIRECTORY}/sounds/$(shuf -n 1 $CURRENT_DIRECTORY/sounds.txt)
amixer sset 'Master' $VOLUME
