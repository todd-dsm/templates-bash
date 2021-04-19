#!/usr/bin/env bash
# -----------------------------------------------------------------------------
#  PURPOSE:
# -----------------------------------------------------------------------------
#  PREREQS: a)
#           b)
# -----------------------------------------------------------------------------
#  EXECUTE: ./yo.sh --opt1 'arg1' --opt2 'arg2'
# -----------------------------------------------------------------------------
#     TODO: 1)
#           2)
# -----------------------------------------------------------------------------
#   AUTHOR: Todd E Thomas
# -----------------------------------------------------------------------------
#  CREATED: 2018/10/00
# -----------------------------------------------------------------------------
#set -x


###----------------------------------------------------------------------------
### VARIABLES
###----------------------------------------------------------------------------
# ENV Stuff

# Variables should be initialized to a default or validated beforehand:
verbose=0


###----------------------------------------------------------------------------
### FUNCTIONS
###----------------------------------------------------------------------------
function pMsg() {
    theMessage="$1"
    printf '%s\n' "$theMessage"
}

function show_help()   {
    printf '\n%s\n\n' """
    Please review this help information and try again.
    Description: $0

    Usage: $0 [OPTION1] [OPTION2]...

    OPTIONS:
    -a, --apple       Tell me about Apples
                      Example: $0 -a

    -b, --banana      I'd like to see what the bananas are ALL about
                      Example: $0 -v --banana

    -c, --cherry      What's up with the Cherries
                      Example: $0 --verbose --server

    -v, --verbose     Turn on 'set -x' debug output.
    """
}

function print_error_noval() {
    printf 'ERROR: "--file" requires a non-empty option argument.\n' >&2
    exit 1
}

# confirm the argument value is non-zero and
function test_opts() {
    myVar=$1
    if [[ -n "$myVar" ]]; then
        export retVal="$myVar"
        echo "$myVar"
    else
        print_error_noval
    fi
}


###----------------------------------------------------------------------------
### MAIN PROGRAM
###----------------------------------------------------------------------------
### Parse Arguments
###---
#set -x
#echo "$@"
#echo "$#"
while :; do
    case "$1" in
        -h|-\?|--help) # Call "show_help" function; display and exit.
            show_help
            exit
            ;;
        -a | --apple)
            test_opts "$2"
            #declare groupName="$retVal"
            #declare groupNameAD="$groupName-ad"
            echo "My Apple! "
            #echo "$#"
            #echo "$@"
            shift 2
            break
            ;;
        -b | --banana)
            #test_opts "$2"
            #declare groupDesc="$retVal"
            #echo "$groupDesc"
            echo "My Banana! "
            #echo "$#"
            #echo "$@"
            shift 2
            break
            ;;
        -c | --cherry)
            #test_opts "$2"
            #declare moreOpts="$retVal"
            echo "My Cherries! "
            #echo "$#"
            #echo "$@"
            shift 2
            break
            ;;
        -v|--verbose)
            verbose=$((verbose + 1))
            ;;
        --) # End of all options.
            shift
            break
            ;;
        -?*)
            printf '\n%s\n' '  WARN: Unknown option (ignored):' "$1" >&2
            printf '\n%s\n\n' "  Run: $0 --help for more info."
            exit
            ;;
        *)  # Default case: If no more options then break out of the loop.
            printf '\n%s\n\n' "  Run: $0 --help for more info."
            show_help
            break
    esac
    shift
done


###----------------------------------------------------------------------------
### Turn on debugging output
###----------------------------------------------------------------------------
if [[ "$verbose" -eq '1' ]]; then
    set -x
fi

exit 0

###---
### REQ
###---
echo "message"
# OUTPUT:
#-----------------------------------


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
