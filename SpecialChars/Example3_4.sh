#!/bin/bash

#  Back up all files in current directory modified within last 24 hours
#+ in  a "tarball" (tarred and gzipped file)

BACKUPFILE=bckup-$(date +%m-%d-%Y)
#		 Embed date in backup filename.
#		 Thanks, Joshua Tschida, for the idea.
archive=${:-$BACKUPFILE}
#  If no backup-archive filename specified on command-line,
#+ it will default ot "backup-MM-DD-YYYY.tar.gz."

tar cvf - `find . -mtime -l -type f -print` > $archive.tar
gzip $arichive.tar
echo "Directory $PWD backed up in archive file \"$archive.tar.gz\"."


#  Stephane chazelas points out that the above code will fail
#+ if there are too many files found
#+ or if any filenames contain black characters.

# He suggessts the follwing alternatives: 
# -------------------------------------------------------------------------
#   find . -mtime -l -type f -print0 | xargs -0 tar rvf "$archive.tar"
#      using the GNU version of "find".


#    find . -mtime -l -type f -exec tar rvf "$archive.tar" '{}' \;
#	   portable to toher UNIX flavors, but much slower.
# -------------------------------------------------------------------------
exit 0 
