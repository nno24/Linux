#!/bin/bash
expr 5 + 6
expr 5 \* 2  #Syntaks for multiplikasjon
expr 5 \* $1  #Syntaks for multiplikasjon
expr 11 % 2  # Modulus ( rest )
a=$( expr 10 - $1 )
echo $a #7
#kjør som: ./expr_ex.sh 15
