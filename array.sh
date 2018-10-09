#!/usr/bin/env bash

declare bar=('yo1' 'yo2' 'yo3')

###---
### Echo all elements in the array
###---
printf '\n\n%s\n' "Print all elements in the array..."
for foo in "${bar[@]}"; do
    printf '%s\n\n' "  $foo"
done

# print the first $i array elements up to $myCount
myCount='2'
printf '\n\n%s\n' "Print $myCount elements in the array..."
for (( i = 0; i < "$myCount"; i++ )); do
    for foo in ${bar[$i]}; do
        printf '%s\n\n' "  $foo"
    done
done

# print the last $i array elements up to $myCount
myCount='3'
printf '\n\n%s\n' "Print the last $myCount elements in the array..."
for (( i = 1; i < "$myCount"; i++ )); do
    for foo in ${bar[$i]}; do
        printf '%s\n\n' "  $foo"
    done
done
