#!/usr/bin/env bash
#set -x

# Vars
declare -a host=(mickey minnie goofy)

# Print array elements with index numbers
# URL: http://mywiki.wooledge.org/BashFAQ/005
for arrIndex in "${!host[@]}"; do
    printf '  Host number %d is %s\n' "$arrIndex" "${host[arrIndex]}"
done

