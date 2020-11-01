#!/bin/bash
# gcd.sh: greatest common divisor
#       Uses Euclid's Algorithm

#  The "greatest common divisor" (gcd) of two integers
#+ is the largest integer tha will divide both, leaving no remainder.

# Euclid's algorithm uses successive division.
#   In each pass,
#+      dividend <--- divisor
#+      divisor  <--- reaminder
#+  untl reaminder = 0
#    The gcd = dividend, on the final pass


# -------------------------------------------------------------
# Argument check
ARGS=2
E_BADARGS=85
E_ARGSNOTINTS=86
# -------------------------------------------------------------
if [ $# -ne "$ARGS" ]
then
    echo "Usage: `basename $0` first-number second-number"
    exit $E_BADARGS
fi
# -------------------------------------------------------------
if ! [[ $1 =~ ^-?[0-9]+$ ]] || ! [[ $2 =~ ^-?[0-9]+$  ]]
then
    echo "Usage: Command-line arguments must be integers."
    exit $E_ARGSNOTINTS
fi
# -------------------------------------------------------------


gcd ()
{

    dividend=$1             # Arbitrary assignment.
    local divisor=$2              #! It doesn't matter which of the two is larger.
                            #  Why not?

    local remainder=1             #  If an uninitialized variable is used inside
                            #  test brackets, an error message results.
    until [ "$remainder" -eq 0 ]
    do    #  ^^^^^^^^^^  Must be previously intialized!
        let "remainder = $dividend % $divisor"
        dividend=$divisor    # Now repeat with 2 smallest numbers.
        divisor=$remainder
    done                     # Euclid's algorithm

}                            # Last $dividend is the gcd.


gcd $1 $2

echo; echo "GCD of $1 and $2 = $dividend"; echo

# Exercises :
# -----------
# 1) Check command-line argumetns to make sure they are integers,
#+   and exit the script with an approriate error message if not.
# 2) Rewrite the gcd () gunction use local variables
