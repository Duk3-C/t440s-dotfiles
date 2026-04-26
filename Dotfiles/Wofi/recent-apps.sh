#!/bin/bash

RECENT_APPS_DIR="$HOME/.local/share/applications"
RECENT_FILE="$HOME/.local/share/recent-apps"

add_recent_app() {
    local app="$1"
    local temp_file
    
    if [ -f "$RECENT_FILE" ]; then
        temp_file=$(mktemp)
        grep -v "^$app$" "$RECENT_FILE" > "$temp_file"
        echo "$app" >> "$temp_file"
        head -n 10 "$temp_file" > "$RECENT_FILE"
        rm "$temp_file"
    else
        echo "$app" > "$RECENT_FILE"
    fi
}

case "$1" in
    --add)
        add_recent_app "$2"
        ;;
    --list)
        if [ -f "$RECENT_FILE" ]; then
            cat "$RECENT_FILE"
        fi
        ;;
    *)
        ls -t "$RECENT_APPS_DIR"/*.desktop 2>/dev/null | head -10 | xargs -I {} basename {} .desktop
        ;;
esac
