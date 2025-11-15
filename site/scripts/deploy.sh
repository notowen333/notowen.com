#!/usr/bin/env bash
set -Eeuo pipefail

SITE=notowen.com
SRC="$(cd "$(dirname "$(readlink -f "$0")")/.." && pwd)"
HTML_DST="/var/www/$SITE/html"
CONF_DST="/etc/nginx/conf.d/$SITE.conf"
SNIPPETS_DST="/etc/nginx/snippets/ssl-params.conf"

echo "==> Deploying $SITE"

# Ensure directories exist (no overwrite)
sudo mkdir -p "$HTML_DST" /etc/nginx/snippets

# Sync HTML (preserve structure, remove deleted files)
sudo rsync -a --delete "$SRC/html/" "$HTML_DST/"

# Update Nginx config and snippets
sudo cp "$SRC/nginx/notowen.conf" "$CONF_DST"
sudo cp "$SRC/nginx/snippets/ssl-params.conf" "$SNIPPETS_DST"

# Validate before reload
sudo nginx -t
sudo systemctl reload nginx

echo "✅ Deployed successfully to $HTML_DST"
