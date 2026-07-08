#!/usr/bin/env bash
set -e

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" &> /dev/null && pwd)"
THEME="pixel-waterfall"
THEME_DIR="$SCRIPT_DIR/themes/$THEME"
SYSTEM_THEMES_DIR="/usr/share/sddm/themes"
SDDM_CONF_DIR="/etc/sddm.conf.d"
SDDM_CONF="$SDDM_CONF_DIR/theme.conf"

if ! command -v sddm &> /dev/null; then
    echo "Error: SDDM is not installed. Install it with: pacman -S sddm"
    exit 1
fi

if [ ! -d "$THEME_DIR" ]; then
    echo "Error: theme not found at $THEME_DIR"
    exit 1
fi

echo ":: Installing SDDM theme: $THEME (sudo may prompt for your password)"

# Copy the theme into the system themes directory
sudo mkdir -p "$SYSTEM_THEMES_DIR"
sudo rm -rf "$SYSTEM_THEMES_DIR/$THEME"
sudo cp -r "$THEME_DIR" "$SYSTEM_THEMES_DIR/$THEME"

# Set it as the active SDDM theme
sudo mkdir -p "$SDDM_CONF_DIR"
if [ ! -f "$SDDM_CONF" ]; then
    printf '[Theme]\nCurrent=%s\n' "$THEME" | sudo tee "$SDDM_CONF" > /dev/null
elif grep -q "^Current=" "$SDDM_CONF"; then
    sudo sed -i "s|^Current=.*|Current=$THEME|" "$SDDM_CONF"
elif grep -q "^\[Theme\]" "$SDDM_CONF"; then
    sudo sed -i "/^\[Theme\]/a Current=$THEME" "$SDDM_CONF"
else
    printf '\n[Theme]\nCurrent=%s\n' "$THEME" | sudo tee -a "$SDDM_CONF" > /dev/null
fi

echo ":: Done. '$THEME' is now the active SDDM theme"
