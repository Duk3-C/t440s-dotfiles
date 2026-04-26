#!/bin/bash
IMAGES_DIR="$HOME/.config/fastfetch/images"
IMAGES=("$IMAGES_DIR"/*.png)

if [ ${#IMAGES[@]} -gt 0 ] && [ -f "${IMAGES[0]}" ]; then
    RANDOM_IMG="${IMAGES[RANDOM % ${#IMAGES[@]}]}"
    fastfetch --logo "$RANDOM_IMG" "$@"
else
    fastfetch "$@"
fi
