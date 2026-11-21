#!/usr/bin/env bash
set -euo pipefail

INSTALL_DIR="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd)"
EXCLUDE_FILE="$INSTALL_DIR/exclude.txt"

for script in "$INSTALL_DIR"/*.sh; do
    [[ -f "$script" ]] || continue

    name="$(basename -- "$script")"
    [[ "$name" == "install-all.sh" ]] && continue

    if [[ -f "$EXCLUDE_FILE" ]] &&
        grep -Fxq -- "$name" "$EXCLUDE_FILE"; then
        printf '\033[1;32mInfo:\033[0m Excluded: %s\n' "$name"
        continue
    fi

    printf 'Running %s\n' "$name"

    if bash "$script"; then
        :
    else
        status=$?
        printf 'Failed running %s (exit %s)\n' "$script" "$status" >&2
        exit "$status"
    fi
done
