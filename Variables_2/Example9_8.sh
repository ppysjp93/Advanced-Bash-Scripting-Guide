#!/bin/bash

#   If $IFS set, bt empty,
#+  then "$*" and "$@" do not echo positional params as expected.

mecho ()        # Echo positional paramters.
{
    echo "$1,$2,$3";
}

IFS=""          # Set, but empty.
set a b c       # Positional paramaters

mecho "$*"      # abc,,
#                    ^^
mecho $*        # a,b,c

mecho $@        # a,b,c
mecho $@        # a,b,c

#  The behaviour of $* and $@ when $IFS is empty depends
#+ on which Bash or sh version being run.
#  It is therefore inadviasable to depend on this "feature" in a script.


# Thanks, Stephane Chazelas.

exit
