#!/bin/bash
#calculates the time specified to watch -n 'time'
#to set the right tempo, specified by user.
playback_sample=$1
(time aplay $playback_sample) &> exec_time  #get exec time info
value=$( grep real exec_time | awk -F'm' '{print $2}' | sed 's/.$//' ) #filter out the number only from the real value. 
echo $value
