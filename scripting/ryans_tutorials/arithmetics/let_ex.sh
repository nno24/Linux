#!/bin/bash
# Basic arithmetic using let
let a=5+4
echo $a # 9
let "a = 5 + 4"
echo $a # 9
let a++
echo $a # 10
let "a = 4 * 5"
echo $a # 20
let "a = $1 + 30"
echo $a # 30 + first command line argument
let "a = $1+ $2 + 30"
echo $a # 30 + first & second  command line argument
# Kjør scriptet som f.eks: ./let_ex.sh 1700 1800  First & second cmd line arguments
