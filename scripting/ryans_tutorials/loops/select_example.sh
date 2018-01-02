#!/bin/bash
# a simple menu system

names='Nicolai Naz Jonathan Haakon Exit'
PS3='Select character: '

select name in $names
do
  if [ $name == 'Exit' ]
  then
	  break
  fi
  echo Heisann $name
done
echo hade bra

