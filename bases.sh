#!/usr/bin/env bash
# Protect $0 from word-splitting. The assignment doesn't need quoted.

# Which directory am I in?
myPathName=$(dirname "$0")
# OUTPUT: '/path/to/pwd'
printf '\n%s\n' "\$myPathName =  $myPathName"

# Which directory am I in?
myFileName=$(basename "$0")
# OUTPUT: 'script-name.sh'
printf '\n%s\n\n' "\$myFileName = $myFileName"
