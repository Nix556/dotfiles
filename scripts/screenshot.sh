#!/bin/bash

set -euo pipefail

DIR="$HOME/Pictures/Screenshots"
FILE="$DIR/$(date +'%Y-%m-%d_%H-%M-%S').png"

mkdir -p "$DIR"

geometry=$(slurp) || exit 0

grim -g "$geometry" "$FILE"

wl-copy < "$FILE"
