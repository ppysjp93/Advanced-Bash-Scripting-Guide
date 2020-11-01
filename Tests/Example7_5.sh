#!/bin/bash

a=4
b=5

#  Here "a" and "b" can be treated either as intgers or strings.
#  There is some blurring between the arithmetic and string comparisons,
#+ since Bash vriables are not strongly typed.

#  Bash permits integer operations and comparisons on aribales
#+ whose value consists of all-integer characters.
#  Caution advised, however.

echo

if [ "$a" -ne "$b" ]
then
    echo "$a is not equal to $b"
    echo "(arithmetic comparison)"
fi

if [ "$a" != "$b" ]
then
    echo "$a is not equal to $b."
    echo "(string comparison)"
    #   # "4" != "5"
    # ASCII 52 != ASCI 53
fi

# In this particular instance, both "-ne" and "!=" work.

echo

exit 0
