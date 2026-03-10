#!/bin/bash

OVERIDE_NVIM_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

. "$OVERIDE_NVIM_DIR/config/override-options.sh"
. "$OVERIDE_NVIM_DIR/plugins/override-lsp.sh"
. "$OVERIDE_NVIM_DIR/plugins/override-completions.sh"
