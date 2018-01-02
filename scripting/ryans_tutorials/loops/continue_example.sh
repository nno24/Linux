#!/bin/bash
#make backup of set of files

for value in $1/*    		#specify directory to be backed up, e.g files
do
  if [ $value == files/file1 ]   #Skipping if file1
  then
	echo skipping $value 
	continue    #continue the loop, if not file1 would also be backed up
  fi
  cp $value $1/backup/		#the backup directory must exist
  echo $value Copied to backup
  ls $1/backup
done
