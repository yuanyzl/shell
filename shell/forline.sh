#!/bin/bash
n=`wc -l 1.txt |awk '{print $1}'`
for i in `seq 1 $n`
do
	sed -n "$i"p 1.txt
done
