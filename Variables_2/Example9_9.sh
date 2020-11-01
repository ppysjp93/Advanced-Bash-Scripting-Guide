#!/bin/bash

echo $_             #  /bin/bash
                    #  Just called /bni/bash to run the script.
                    #  Note that htis will vary according to
                    #+ how the script is invoked.

du >/dev/null       #  So no output from command.
echo $_             #  du

ls -al >/dev/null   #  So no output from command.
echo $_             #  -al (last argument)

:
echo $_             #  :
