#!/bin/bash

#feed this script with one absolute path, will give back whats directory and whats a file
#in this directory

entries=$(ls $1)  	#define list of entries
cd $1 			#change directory to get the correct path
for entry in $entries
do 
 if [ -d $entry ]  	#check if directory
 then
  echo $entry : Its a directory
  count=$( ls -l $entry | wc -l ) #gives back number of entries
  echo Number of entries: $count
 else 
  echo $entry Its a file
  string=$(ls -lah $entry)
  array=($string)
  echo Size is ${array[4]} bytes
 fi
done

