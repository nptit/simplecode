#########################################################################
# File Name: test10.sh
# Author: ma6174
# mail: ma6174@163.com
# Created Time: Fri 04 Sep 2015 06:48:24 PM CST
#########################################################################
#!/bin/bash

BACKUPFILE=backup-$(date +%m-%d-%Y)
archive=${1:-$BACKUPFILE}

tar cvf - `find . -mtime -1 -type f -print` > $archive.tar
gzip $archive.tar
echo "Directory $PWD backed up in archive file \"$archive.tar.gz\""
exit 0

