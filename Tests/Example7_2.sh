#!/bin/bash

echo

if test -z "$1"
then
    echo "No command-line arguments."
else
    echo "First command-line argument is $1."
fi

echo

if /usr/bin/test -z "$1"        # Equicalent to "test" builtin.
#  ^^^^^^^^^^^^^                # Specifying full pathname.
then
    echo "No command-line arguments."
else
    echo "First command-line argument it $1."
fi

echo

if [ -z "$1" ]                  # Functionally idenctial to abvoe code blocks
#  if [ -z "$1"                 # should work, but ...
#+ Bash repsonds to a missing close brack with an error message
then
    echo "No command-line arguments."
else
    echo "First command-line argument is $1."
fi

echo

if /usr/bin/[ -z "$1" ]                  # Again, functionally idenctial to abvoe code blocks
#  if [ -z "$1"                             # should work, but ...
                                            # Error message, hoever Bash should be fixed by version
                                            # 3.x
then
    echo "No command-line arguments."
else
    echo "First command-line argument is $1."
fi

echo

exit 0
