#!/usr/bin/env bash
#set -x

###---------------------------------------------------
### VARIABLES
###---------------------------------------------------
myVars=(
    'ya1,ya2,ya3,ya4'
    'ye1,ye2,ye3,ye4'
    'yo1,yo2,yo3,yo4'
    )

###---
### Echo all elements in the array
###---
###---------------------------------------------------
### MAIN PROGRAM
###---------------------------------------------------
### Echo all elements in the array
###---
printf '\n\n%s\n' "Print all elements in the array..."
for dataRow in "${myVars[@]}"; do
    while IFS=',' read -r var1 var2 var3 var4; do
        printf '%s\n' "$var1 - $var2 - $var3 - $var4"
    done <<< "$dataRow"
done


###---
### OUTPUT
###---
#    $ ./array-wide.sh
#
#    Print all elements in the array...
#    ya1 - ya2 - ya3 - ya4
#    ye1 - ye2 - ye3 - ye4
#    yo1 - yo2 - yo3 - yo4
