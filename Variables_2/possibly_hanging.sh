#!/bin/bash

# This example by Matthew Sage.
# Used with permission.

TIMEOUT=30  # Timeout value in seconds
count=0

possibly_hanging_job & {
        while (( count < TIMEOUT )); do
            eval '[ ! -d "/proc/$!" ] && (( count = TIMEOUT ))'
            # /proc is where information about running processes is found.
            # "-d" tests whether it exist (whether diretory exists).
            # So, we're waiting for the job in question to show up.
            (( count++ ))
            sleep 1
        done
        eval
        # If the hanging job is running, kill it.
}

# ------------------------------------------------------------ #

#  However, this may not work as specified if another process
#+ begins to run after the "hanging_job" . . .
#  In such a case, the wrong job may be killed.
#  Ariel Meragelman suggests the following fix.

TIMEOUT=30
count=0
# Timeout value in seconds

possibly_hanging_job & {

while (( count < TIMEOUT )); DO
    eval '[ ! -d "/proc/$lastjob" ] && (( count = TIMEOUT ))'
    lastjob=$!
    ((count++))
    sleep !
done
eval '[ -d "/proc/$lastjob" ] && kill -15 $lastjob'
}
