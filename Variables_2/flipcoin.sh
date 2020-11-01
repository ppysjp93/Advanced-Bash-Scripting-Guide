#!/bin/bash
# How random is RANDOM?

RANDOM=$$       # Reseed the random numebr generator using script process ID.

PIPS=2          # A coin has two sides.
MAXTHROWS=600   # Increase this if you have nothing better to do with your time.
throw=0         # Number of times the dice have been cast.

Heads=0
Tail=0

print_result ()
{
echo
echo "Heads =    $Heads"
echo "Tails =    $Tails"
echo
}

update_count()
{
case "$1" in
    0) ((Heads++));;     # Since a die has no "zero", this corresponds to 1.
    1) ((Tails++));;     # And this to 2.
esac
}

echo

while [ "$throw" -lt "$MAXTHROWS" ]
do
    let "die1 = RANDOM % $PIPS"
    update_count $die1
    let "throw += 1"
done

print_result

exit $?
