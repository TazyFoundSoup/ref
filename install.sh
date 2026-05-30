#!/bin/bash

set -e

echo "installing ref..."

TMP="/tmp/ref"

curl -sSL https://raw.githubusercontent.com/TazyFoundSoup/ref/refs/heads/main/ref -o "$TMP"

INSTALL_DIR="/usr/local/bin"
TARGET="$INSTALL_DIR/ref"

if [ ! -w "$INSTALL_DIR" ]; then
  sudo mv "$TMP" "$TARGET"
  sudo chmod +x "$TARGET"
else
  mv "$TMP" "$TARGET"
  chmod +x "$TARGET"
fi

mkdir -p "$HOME/.ss"

echo "done"
echo "run: ref -works"
