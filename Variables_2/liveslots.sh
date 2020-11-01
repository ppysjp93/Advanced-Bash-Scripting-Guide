#!/bin/bash
POS=11
ROWS=11
i=5


liveslots () {
     j=0
     let "n = (($SHIFT + $POS))*3"
     stringformat=${n}s
     while [ "$j" -lt "$ROWS" ]
     do
         if [[ $1 -eq $j ]]
         then
             printf "%$stringformat\n" o
         else
             echo
         fi
         ((j++))
     done

     echo " |__|__|__|__|__|__|__|__|__|__|__|__|__|__|__|__|__|__|__|__|__| "
     echo "                                ||"
 }


liveslots 5
