#!/usr/bin/env bash
set -ux

###----------------------------------------------------------------------------
### VARIABLES
###----------------------------------------------------------------------------
export DEBIAN_FRONTEND=noninteractive
key='58118E89F3A912897C070ADBF76221572C52609D'
keyServers=('ha.pool.sks-keyservers.net' 'pgp.mit.edu' 'keyserver.ubuntu.com')


###---
### Echo all elements in the array
###---
printf '%s\n' "Adding Docker GPG keys..."
#while [[ $? -ne 0 ]]; do
for key_server in "${keyServers[@]}"; do
    printf '%s\n\n' "  attempting to pull keys from $key_server"
    apt-key adv --keyserver "hkp://$key_server:80" --recv-keys "$key"
    if [[ $? -ne 0 ]]; then
        continue
        echo "bad"
    else
        break
        echo "good"
    fi
done

exit 0
