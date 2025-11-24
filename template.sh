#!/usr/bin/env bash
#  PURPOSE: Description
# ----------------------------------------------------------------------------
#  PREREQS: a)
#           b)
#           c)
# ----------------------------------------------------------------------------
#  EXECUTE:
# ----------------------------------------------------------------------------
#set -x


# ----------------------------------------------------------------------------
# VARIABLES
# ----------------------------------------------------------------------------
# ENV Stuff
#: "${1?  Wheres my first agument, bro!}"
thing1=false
thing2=true

# Data


# ----------------------------------------------------------------------------
# FUNCTIONS
# ----------------------------------------------------------------------------
# Loads print functs: print_goal, print_req, print_pass, print_info, print_error
source scripts/lib/printer.func

# ----------------------------------------------------------------------------
# MAIN PROGRAM
# ----------------------------------------------------------------------------
# Goal A
# ---
print_goal 'Ensuring Goal A'


# ---
# REQ1
# ---
print_req "Perform operation 2 that supports $goal-{a}..."
if [[ $thing1 == false ]]; then
    print_error "operation 1 failed!"
else
    print_pass
fi


# ---
# REQ2
# ---
print_req "Perform operation 2 that supports $goal-{a}..."
if [[ $thing2 == false ]]; then
    print_error "operation 2 failed!"
else
    print_pass
fi


# ----------------------------------------------------------------------------
# Goal B
# ---
print_goal 'Ensuring Goal B'


# ---
# REQ1
# ---
print_req "Perform operation 1 that supports $goal-{b}..."
if [[ $thing1 == false ]]; then
    print_error "operation 1 failed!"
else
    print_pass
fi


# ---
# REQ2
# ---
print_req "Perform operation 2 that supports $goal-{b}..."
if [[ $thing2 == false ]]; then
    print_error "operation 2 failed!"
else
    print_pass
fi


# ----------------------------------------------------------------------------
# Goal C, etc.
# ---
# REQ1
# ---
if ! command_to_execute; then
  print_error "command failed."
fi


# ---
# fin~
# ---
exit 0
