#!/bin/bash
# weirdvars.sh: Echoing weird variables.

echo

var="'(]\\{}\$\""   # Orange means a character is being escaped.
echo $var           # '(]\{}$"
echo "$var"         # '(]\{}$"

echo

IFS='\'
echo $var           # '(] {}$"      \ converted to space because of
echo "$var"         # '(]\{}$"      internal field separator.

# In the above example the backslash has been turned into a special character.
# When the backslash is double quoted it is not reinterpreted when it is on its own.
# When the backslash is not double quoted and is on its own it is reinterpreted.

echo

var2="\\\\\""
echo $var2          #       "   Here all the special characters were reinterpreted
echo "$var2"        #     \\"   Here only some of the special characters were

echo

# But ... var2="\\\\"" is illegal. Why? Because because there is nothing escaping the
# quote.
var3='\\\\'
echo "$var3"        # \\\\
# Strong quoting works, though.

# ************************************************************ #
# As the first example above shows, nesting quotes is permitted.

echo "$(echo '"')"      # "
#    ^           ^


# At times this comes in useful.

var1="Two bits"
echo "\$var1 = "$var1""     # $var1 = Two bits
#    ^                ^

# Or, as Christ Hiestand points out ...

if [[ "$(du "$My_File1")" -gt "$(du "$My_File2")" ]]
#
then
    ...
fi
# ************************************************************ #







