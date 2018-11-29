#!/bin/bash
#case判断
read -p "请输入一个数" n
if [  -z $n ]
then
        echo "请输入数字"
        exit 1
fi
n1=`echo $n|sed 's/[-0-9]//g'`
if [ ! -z $n1 ]
then
	echo "请输入数字"
	exit 1
elif [ $n -lt 0 -o $n -gt 100 ]
then 
	echo "数字范围不对"
	exit 1
fi

#n2=$[$n%2]
#case $n2 in 
#	0)
#	echo "偶数"
#	;;
#	1)
#	echo "奇数"
#	;;
#	*)
#	echo "请输入数字"
#	;;
#esac

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
