#!/bin/bash
# Reading lines in /etc/fstab

File=~/Project/AdvancedShell/SpecialChars/sometext.txt

{
    read line1
    read line2
} < $File

echo "First line in $File is:"
echo "$line1"
echo
echo "Second line in $File is:"
echo "$line2"

exit 0

# Now, how do you parse the separate fields of each line?
# Hint: use awk, or . . .
# . . . Hans-Joerg Diers suggests using "set" Bash builtin.
