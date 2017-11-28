#!/bin/bash
# else example
if [ $# -eq 1 ] #Hvis en fil er gitt som kommando linje argument
then
nl $1		#nl: print til stdout, med linjeno.
else
nl /dev/stdin   #...hvis ikke, les fra std-In
fi
