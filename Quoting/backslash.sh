#!/bin/bash
# Simple escaping and quoting
echo \z                     # z
echo \\z                    # \z
echo '\z'                   # \z
echo '\\z'                  # \\z
echo "\z"                   # \z
echo "\\z"                  # \z

	                        #
echo `echo \z`	            # z
echo `echo \\z`	            # z
echo `echo \\\z`	        # \z
echo `echo \\\\z`	        # \z
echo `echo \\\\\\z`	        # \z
echo `echo \\\\\\\z`	    # \\z
echo `echo "\z"`	        # \z
echo `echo "\z"`	        # \z
