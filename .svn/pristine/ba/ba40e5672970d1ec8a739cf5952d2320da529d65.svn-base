#########################################################################
# File Name: test2.sh
# Author: ma6174
# mail: ma6174@163.com
# Created Time: Fri 04 Sep 2015 03:20:42 PM CST
#########################################################################
#!/bin/bash

echo hello; echo there
filename=tt.sh
if [ -r "$filename" ]; then
	echo "file $filename exists"; cp $filename $filename.bak
else
	echo "file $filename not exists"; touch $filename
fi;
