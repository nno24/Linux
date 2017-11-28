#!/bin/bash

case $1 in
  start)	#case 1
    echo starting
    ;;
  stop)		#case 2
    echo stopping
    ;;
  restart)	#case 3
    echo restarting
    ;;
  hibernate)	#case 4
    echo hibernating
    ;;
  *) # * any number of any character
    echo don\'t know
    ;;
esac  #end of case
