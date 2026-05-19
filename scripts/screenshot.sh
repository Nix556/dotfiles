#!/bin/bash

set -euo pipefail

DIR="$HOME/Pictures/Screenshots"
FILE="$DIR/$(date +'%Y-%m-%d_%H-%M-%S').png"

mkdir -p "$DIR"

if grim -g "$(slurp)" "$FILE"; then
    wl-copy < "$FILE"
    notify-send "Screenshot saved" "$FILE"
fi
