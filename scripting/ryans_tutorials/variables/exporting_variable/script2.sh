#!/bin/bash
# demonstrate variable scope 2
# Let's verify their current value
echo $0 :: var1 : $var1, var2 : $var2
# Let's change their values
var1=norseng
var2=saleh
#export var2
echo $0 :: var1 : $var1, var2 : $var2
./script3.sh
