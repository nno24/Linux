#!/bin/bash

file1=$1
echo $file1		#file 1

if [ $file1 -f ]	#check if file exists and regular file
then
  echo file1 is a regular file
  eog $file1
else
  echo File1 is not a regular file
 # eog $file2
fi

