#!/bin/bash

pkgmgr="pacman"
hash paru 2>/dev/null && pkgmgr="paru"
hash yay 2>/dev/null && pkgmgr="yay"

updatesli=($($pkgmgr -Qu))
count=${#updatesli[@]}

tooltip="No updates available."

if [ $count -gt 0 ]; then
    tooltip="UPDATES: $count\n"
    for i in "${updatesli[@]}"; do
        tooltip+="$i\n"
    done
fi

cat << EOF
{ "text": "$count", "tooltip": "$tooltip" }
EOF

