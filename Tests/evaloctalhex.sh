#!/bin/bash
# [[ Octal and hexadecimal evaluation ]]

decimal=15
octal=017   # = 15 (decimal)
hex=0x0f    # = 15 (decimal)

if [ "$decimal" -eq "$octal" ]
then
    echo "$decimal equals $octal"
else
    echo "$decimal is not equal not $octal"     # 15 is not equal to 017
fi          # Doesn't evaluate with [ single brackets ]i!


if [[ "$decimal" -eq "$octal" ]]
then
    echo "$decimal equals $octal"
else
    echo "$decimal is not equal not $octal"     # 15 is equal to 017
fi          # Evaluates with [[ brackets ]]!

if [[ "$decimal" -eq "$hex" ]]
then
    echo "$decimal equals $hex"
else
    echo "$decimal is not equal not $hex"     # 15 is equal to 017
fi          # Evaluates with [[ brackets ]]!
