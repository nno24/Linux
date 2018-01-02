#!/bin/bash
# a simple menu system

colors='blue white yellow green'
select color in $colors
do
  echo You choose $color
done
