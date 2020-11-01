#!/bin/bash
# rand-string.sh
# Generating an 8-character "random" string.

if [ -n "$1"  ]     #  If command-line argument present,
then
    str0="$1"
else
    str0="$$"
fi

POS=2               # Starting from position 2 in the string.
LEN=8               # Extract eight characters.

str1=$( echo "$str0" | md5sum | md5sum )
#   Doubly scramble
#+  by piping and repipiong to md5sum

randstring="${str1:$POS:$LEN}"
# Can parameterize ^^^^ ^^^^
echo "$randstring"

exit $?

# bozo$ ./rand-string.sh my-password
# 1bdd88c4

#  No, this is not recommended
#+ as a method of generating hack-proof passwords.
