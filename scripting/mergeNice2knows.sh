#!/bin/bash
string=$( find . -iname nice2know )		#locate all nice2knows
array=($string)
echo ${#array[*]} items 			#print no of items in array
echo ${array[*]}				#print all items in array

#now merge all these files in one
start=0
stop=${#array[*]}
for (( c=$start; c<$stop; c++ ))
do
	echo Merging File $c : ${array[$c]}
	echo From ${array[$c]}:>>nice2knowMaster #redirecting where from
	cat ${array[$c]} >> nice2knowMaster	#redirecting to file
done
echo Done!
less nice2knowMaster
