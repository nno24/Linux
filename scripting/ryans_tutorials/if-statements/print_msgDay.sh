#!/bin/bash

echo Enter weekday 1 to 7
read weekday
case $weekday in
  [1-3])
    echo "boring, its early in the week"
    ;;
  [4-5])
    echo "now, we are closer to the weekend!!"
    ;;
  [6-7])
    echo "Finelly weekend!"
    ;;
#  *)
 #   echo "No valid input"
  #  ;;
esac

