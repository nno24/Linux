#!/bin/bash
# Ask the user for their name
echo Hello, who am I talking to?
read varname
echo what is your favourite 2 cars?
read -p 'car1: ' carvar1 
read -p 'car2: ' carvar2
echo Nice to meet u $varname , you like: $carvar1, $carvar2.
