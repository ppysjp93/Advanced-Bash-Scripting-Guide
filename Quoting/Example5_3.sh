#!/bin/bash
# Author: Sigurd Solaas, 20 Apr 2011
# Used in ABS Guide with permission.
# Requires version 4.2+ of Bash.

key="no value yet"
while true; do
    clear
    echo "Bash Extra Keys Demo. Keys to try:"
    echo
    echo "* Insert, Delete, Home, End, Page_Up, and Page_Down"
    echo "* The four arrow keys"
    echo "* Tab, enter, escape, and space key"
    echo "* The letter and number keys, etc."
    echo
    echo "      d = show date/time"
    echo "      q = quit"
    echo "========================================="
    echo

# Convert the separate home-key to home-key_num_7:
if [ "$key" = $'\x1b\x4f\x48' ]; then
    key=$'\x1b\x5b\x31\x7e'
    # Quoted string-expansion construct.
fi

# Convert the separate end-key to end-key_num_1.
if [ "$key" = $'\x1b\x4f\x46' ]; then
    key=$'\x1b\x5b\x34\x7e'
    # Quoted string-expansion construct.
fi

case "$key" in
    $'\x1b\x5b\x32\x7e')        # Insert
        echo Insert Key
        ;;

    $'\x1b\x5b\x33\x7e')        # Delete
        echo Insert Key
        ;;

    $'\x1b\x5b\x31\x7e')        # Home_Key_num_7
        echo Insert Key
        ;;

    $'\x1b\x5b\x34\x7e')        # End_key_num_1
        echo Insert Key
        ;;

    $'\x1b\x5b\x35\x7e')        # Page_Up
        echo Insert Key
        ;;

    $'\x1b\x5b\x36\x7e')        # Page_down
        echo Insert Key
        ;;

    $'\x1b\x5b\x41')        # Up_arrow
        echo Insert Key
        ;;

    $'\x1b\x5b\x42')        # Down_arrow
        echo Insert Key
        ;;

    $'\x1b\x5b\x43')        # Right_arrow
        echo Insert Key
        ;;

    $'\x1b\x5b\x44')        # Left_arrow
        echo Insert Key
        ;;

    $'\x09')                # Tab
        echo Tab Key
        ;;

    $'\x0a')                # Enter
        echo Enter Key
        ;;

    $'\x1b')                # Escape
        echo Escape Key
        ;;

    $'\x20')                # Space
        echo Space key
        ;;
    d)
        date
        ;;
    q)
        echo Time to quit...
        echo
        exit 0
        ;;
    *)
        echo You pressed: \'"$key"\'
        ;;
esac

echo
echo "========================================="

unset K1 K2 K3
read -s -p "Press a key: "
K1="$REPLY"
read -s -t 0.001
K2="$REPLY"
read -s -t 0.001
K3="$REPLY"
key="$K1$K2$K3"

done

exit $?

