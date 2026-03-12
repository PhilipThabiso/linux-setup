#!/bin/sh


INSTALL_ALL_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

. "$INSTALL_ALL_DIR/install-ghostty.sh"
. "$INSTALL_ALL_DIR/install-stow.sh"
. "$INSTALL_ALL_DIR/install-chromium.sh"
. "$INSTALL_ALL_DIR/install-yazi.sh"
. "$INSTALL_ALL_DIR/install-gnumeric.sh"








