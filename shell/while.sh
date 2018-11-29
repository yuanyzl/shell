#!/bin/bash
while :
do
#echo ok
#sleep 3
 load=`w|head -l|awk 'load average:' '{print $2}'|cut -d. -fl`
 if [ $load -gt 10 ]
 then
	mail -s "load is high: $load" asldk@11.com
 fi
  sleep 30
done
