#!/bin/bash
#Arg 1: Sample
#Arg 2: Repeats
#Arg 3: Tempo

timeSample=$( ./calc_timeSample.sh $1 )     #get exec time from sample
echo timing $1 : $timeSample
period=$( echo "scale=2;60/$3" | bc | awk '{printf "%f", $0}' )
echo The period is : $period
period_converted=$( sed 's/\./,/' <<<"$period" )
echo Now the period with comma : $period_converted

function timeBetweenPlaybacks {
timeBetween=$( echo "scale=2;$period-$timeSample"| bc | awk '{printf "%f", $0}' )
timeBetween_converted=$( sed 's/\./,/' <<<"$timeBetween" )
echo Time between samples is $timeBetween
echo Time between converted is $timeBetween_converted
}

timeBetweenPlaybacks

watch -n $timeBetween_converted aplay $1
