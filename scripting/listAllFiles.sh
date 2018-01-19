#!/bin/bash
#Makes a list of all files in specified path and all subdirectories
#Arg1: Path

#initialise lists:
echo " " > list_d
echo " " > list_f

path=$1

function check_entries {
#-----Cheking entries of "ls" puts them in files of directories/files
entries=$( ls $path )  	#define list of entries
cd $path
for entry in $entries
do 
 if [ -d $entry ]  	#check if directory
 then
  echo $entry : Its a directory
  echo $entry >> list_d
 else 
  echo $entry Its a file
  #Write entry to list of files
  echo $entry >> list_f
 fi
done
}
check_entries $path
#if list of directories is empty, we are done!
dir_cnt=$( cat list_d | wc -l )
echo "Number of directories are $dir_cnt"
while [ $dir_cnt != 0 ]
do
  echo We are not done...
  for (( c=1; c<=$dir_cnt; c++ ))
  do
     dir_next=$( sed -n "$c p" list_d )
     echo "The next directory to check is $dir_next"
     path=$dir_next
     check_entries $path
     #Go back one after entering directory
     cd ..
  done
done
echo "We are done!..all files in dir $1 are.."
cat list_f



