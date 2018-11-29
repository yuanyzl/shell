#!/bin/bash
#根据时间生成日志
d=`date +%F`
#exec是将其下面的语句的执行写入日志
exec >/tmp/$d.log 2>&1
echo "begin at `date`"
ls /tmp/alskjfisdf
cd /alskjfksdf
echo "end at `date`"
