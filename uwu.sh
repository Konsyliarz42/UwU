#!/bin/bash
set -Eeuo pipefail

CURRENT_DIRECTORY=$( dirname -- "$( readlink -f -- "$0"; )"; )
VOLUME=$(amixer get Master | grep -E -o -m 1 '[0-9]{1,3}%')

ls "$CURRENT_DIRECTORY"/sounds > "$CURRENT_DIRECTORY"/sounds.txt

amixer set Master 100%
mpv "${CURRENT_DIRECTORY}"/sounds/"$(shuf -n 1 "$CURRENT_DIRECTORY"/sounds.txt)"
amixer set Master "$VOLUME"
