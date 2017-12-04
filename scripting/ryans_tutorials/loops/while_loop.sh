#!/bin/bash

counter=1
while [ $counter -le 10 ] # while variable counter is less or equal
do
  echo $counter
 ((counter++))
done

echo Ferdig
