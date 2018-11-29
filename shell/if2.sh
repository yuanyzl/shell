#!/bin/base

read -p "请输入一个数组" n
#n2=`echo $n|grep -c '[^0-9]'`
#if [ $n2 -eq 1 ]
#-q是指不输出 安静的 作为判断条件
if echo $n |grep -q '[^0-9]'
then 
	echo "你输入的不是数字"
	exit 1
fi
n1=$[$n%2]

if [ $n1 -eq 0 ]
then 
	echo "你输入的时偶数"
else 
	echo "你输入的是奇数"
fi
