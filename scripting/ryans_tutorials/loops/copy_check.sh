#!/bin/bash
#make backup of set of files

for value in $1/*
do
  if [ ! -r $value ]
  then
	echo $value not readable 1>&2
	continue    #continue the loop, if theres a file not readable
  fi
  cp $value $1/backup/
done
