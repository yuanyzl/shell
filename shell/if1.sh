#!/bin/bash
#if的尝试使用
a=1
if  [ $a == 2 ] 
then
	echo true
elif [ $a -lt 10 ]
then 
	echo "no false"
else 
	echo "false"
fi
