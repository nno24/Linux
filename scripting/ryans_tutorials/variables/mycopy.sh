#!/bin/bash
#$1 & $2 are command line arguments.
cp $1 $2
#verify that copy worked
echo details for $2
ls -lh $2
