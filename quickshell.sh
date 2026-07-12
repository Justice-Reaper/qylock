#!/usr/bin/env bash
set -e

DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
TARGET_DIR="$HOME/.local/share/quickshell-lockscreen"
THEME="pixel-waterfall"

if ! command -v quickshell &> /dev/null; then
    echo "Error: quickshell is not installed. Install it with: pacman -S quickshell"
    exit 1
fi

echo ":: Installing Quickshell lockscreen (theme: $THEME)"

# Deploy the lockscreen wrapper
rm -rf "$TARGET_DIR"
cp -r "$DIR/quickshell-lockscreen" "$TARGET_DIR"
cp -r "$DIR/themes" "$TARGET_DIR/themes"
chmod +x "$TARGET_DIR/lock.sh"

# Set the theme
mkdir -p "$HOME/.config/qylock"
echo "$THEME" > "$HOME/.config/qylock/theme"

echo ":: Done"
echo ":: Bind a keyboard shortcut to: $TARGET_DIR/lock.sh"
