#!/usr/bin/env bash
# shellcheck disable=SC2317
#  PURPOSE: Description
# -----------------------------------------------------------------------------
#  PREREQS: a)
#           b)
#           c)
# -----------------------------------------------------------------------------
#  EXECUTE:
# -----------------------------------------------------------------------------
#set -x


###----------------------------------------------------------------------------
### VARIABLES
###----------------------------------------------------------------------------
# ENV Stuff
#: "${1?  Wheres my first agument, bro!}"
thing=false

# Data


###----------------------------------------------------------------------------
### FUNCTIONS
###----------------------------------------------------------------------------
### Use this while developing
function pMsg() {
    theMessage="$1"
    printf '%s\n' "$theMessage"
}

### Add these later
### Loads print functions: print_goal, print_req, print_pass, print_error
source lib/printer.func

###----------------------------------------------------------------------------
### MAIN PROGRAM
###----------------------------------------------------------------------------
### REQ
###---
print_goal 'Lets do some STUFF!'

###---
### REQ
###---
print_req 'Do thing...'

if [[ $thing == false ]]; then
    print_error "thing failed!"
else
    print_pass
fi

###---
### REQ
###---


###---
### REQ
###---


###---
### REQ
###---


###---
### REQ
###---


###---
### REQ
###---


###---
### REQ
###---


###---
### REQ
###---


###---
### REQ
###---


###---
### REQ
###---


###---
### fin~
###---
exit 0
