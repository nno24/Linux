#!/bin/bash
#Takes an input file with lines of rpms to installed.
#The actual install command in the for loop must be implemented: use either yum or rpm.

linecnt=$( wc -l $1 | tr -dc '0-9' )	#determine number of lines in the file
stop=$linecnt
start=1
echo $linecnt rpms to be installed from $1
for (( c=$start; c<=$stop; c++ ))
do
  rpm=$( sed -n "$c p" $1 )		#rpm to be installed from the list in $1
  echo To be installed: $rpm
done
