#!/bin/bash
#print the number only
tecams=$( cat config | grep tecams | awk -F' ' '{print $2}' )
sds=$( cat config | grep sds | awk -F' ' '{print $2}' )  
rpsrec=$( cat config | grep rpsrec | awk -F' ' '{print $2}' )
echo tecams $tecams sds $sds rpsrec $rpsrec
