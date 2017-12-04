#!/bin/bash
#or eksempel
if [ $USER == 'root' ] || [ $USER == 'novadev' ]
then
  ls -alh
else
  ls
fi
