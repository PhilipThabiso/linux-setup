#!/bin/bash

set -e

OVERIDE_NVIM_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

. "$OVERIDE_NVIM_DIR/config/update-config-options.sh"
. "$OVERIDE_NVIM_DIR/plugins/update-plugin-lsp.sh"
. "$OVERIDE_NVIM_DIR/plugins/update-plugin-completions.sh"
. "$OVERIDE_NVIM_DIR/plugins/update-plugin-colors.sh"
. "$OVERIDE_NVIM_DIR/snippets/update-snippets-go.sh"
