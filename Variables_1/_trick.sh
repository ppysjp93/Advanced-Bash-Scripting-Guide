#!/bin/bash

variable1_=$1_      # Rather than variable1=$1

critical_argument01=$variable1_

# The extra character can be stripped off later, like so.
variable1=${variable1_/_/}
# Side effects only if $variable1_ begins with an underscore.
# This uses one ofthe parameter substitution templates discusses later.
# (leaving out the replacement pattern results in a deletion.)

#  A more straight forward way of dealing with this is
#+ to simply test whether expected positional parameters have been passed.
if [ -z $1  ]
then
    exit $E_MISSING_POS_PARAM
fi

#  However, as Fabian Kreutz points out,
#+ the above method may have unexepected side-effects.
#  A better method is parameter substitution:
#           ${1:-$DefaultVal}
#  See the "Parameter Substitution" section
#+ in the "Variables Revisisted" chapter.
