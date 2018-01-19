#!/bin/bash
#Arg 1:/path/to/File1
#Arg 2: /path/to/File2
#Avoid white spaces in the path

echo "--------File2 has the following lines File1 doesn't:-------"
grep -Fxv -f $1 $2 > file1_vs_file2
cat file1_vs_file2
echo "--------File1 has the following lines File2 doesn't:-------"
grep -Fxv -f $2 $1 > file2_vs_file1
cat file2_vs_file1

