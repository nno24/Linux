#!/bin/bash
# efif statements

if [ $1 -ge 20 ]	#Hvis du er eldre eller lik 20 år
then
  echo Du kan være med på festen
elif [ $2 == 'ja' ]    #Hvis du har tillatelse fra foreldrene, men under 20
then
  echo du kan være med å festen men må være tilbake før midnatt.
else
  echo du kan IKKE være med på festen.
fi
