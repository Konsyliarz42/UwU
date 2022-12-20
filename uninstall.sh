#!/bin/bash
set -Eeuo pipefail

echo Delete desktop entry
rm ~/.local/share/applications/uwu.desktop

echo Delete data
rm -rf ~/Documents/uwu

echo "Success :("
