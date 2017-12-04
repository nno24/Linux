#!/bin/bash
#check file if executable or writable

if [ $# -eq 1 ]
then
  echo File is command line arg.
  if [ -r $1 ] && [ -w $1 ]
  then
    echo File has  read and write access
  fi
else
  echo No file specified.
fi
