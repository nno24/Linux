#!/bin/bash
#Sjekker om $1 er større eller mindre enn 100
if [ $1 -gt 100 ]
then
 echo "Hei hei, det er et stort tall"
	
  if (( $1 % 2 == 0 )) #Sjekker om det er noen rest
  then
    echo Er også et partall
  fi
fi
date
