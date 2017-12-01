#!/bin/bash

counter=1
until [ $counter -gt 10 ] #do the loop until counter is greater or equal to 10
do
  echo $counter
 ((counter++))
done

echo Ferdig
