#!/bin/bash
ip() {

	ifconfig |grep -A1 "$1" |tail -1 |awk '{print $2}'
}

read -p "请输入你的eth名字" e
myip=`ip $e`
echo "$e address is $myip"

