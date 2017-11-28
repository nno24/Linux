#!/bin/bash
#and eksempel
if [ -r $1 ] && [ -s $1 ]
then
  echo "This file is useful: The file is readable && has a size greater than zero"
fi
