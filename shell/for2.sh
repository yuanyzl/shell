#!/bin/bash
for f in `ls  /etc/`
do
	if [ -d /etc/$f ]
	then
	 ls -d /etc/$f
	fi
done
