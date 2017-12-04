#!/bin/bash
#print std input and only pring the 3rd line .
ls -l | cat /dev/stdin | sed '3!d'
