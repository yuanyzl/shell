#!/bin/bash
t=1
while [ $t == 1 ]
do
 read -p "请输入数字" n
 if [ -z $n ]
 then
	echo "请输入一些东西"
	continue
 fi
 
n1=`echo $n|sed 's/[-0-9]//g'`
 if [ ! -z $n1 ]
 then 
	echo "请输入纯数字"
	continue
 fi

 
if [ $n -lt 60 ]
then
	tag=1
elif [ $n -ge 60 -a $n -lt 80 ]
then 
	tag=2
elif [ $n -ge 80 -a $n -lt 90 ]
then
	tag=3
elif [ $n -ge 90 -a $n -lt 100 ] 
then
	tag=4
fi
case $tag in
	1)
	echo "不及格"
	;;
	2)
	echo "及格"
	;;
	3)
	echo "良好"
	;;
	4)
	echo "优秀"
	;;
	*)
	echo "出错了"
	;;
esac
 break
done
