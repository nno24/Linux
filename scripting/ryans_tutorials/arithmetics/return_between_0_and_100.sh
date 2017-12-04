#!/bin/bash
nevner=$(( $1 / 3 ))
number=$(( $RANDOM / $nevner ))
echo $number
