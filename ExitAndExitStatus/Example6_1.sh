#!/bin/bash

echo hello
echo $?         # Exit status 0 returned because command executed successfully.

laskdf          # Unrecognized command
echo $?         # Non-zero exit status returned -- command Failed to execute.

echo

exit 113        # Will return 113 to shell
                # To verify this, type "echo $?" after the script terminates

#  By convention, an 'exit 0' indicates succes,
#+ while a non-zero exit value means an error or anomalous condition.
#  See the "Exit Codes With Special Meanings" appendix.
