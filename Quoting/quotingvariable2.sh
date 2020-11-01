#!/bin/bash
variable1="a vriable containing five words"
COMMAND This is $variable1      # Executes COMMAND with 7 arguments:
# "This" "is" "a" "variable" "containing" "five" "words"

COMMAND "This is $variable1"    # Executes COMMAND with 1 argument:
# "This is a variable containing five words"


variable2=""        # Empty.

COMMAND $variable2 $variable2 $variable2
                # Executes COMMAND with no arguments
COMMAND "$variable2" "$variable2" "$variable2"
                # Executes COMMAND with 3 empty arguments
COMMAND "$variable2 $variable2 $variable2"
                # Executes COMMAND with 1 empty arguments


# Thanks, Stephane Chazelas. (Makes so much sense this time!)

