#########################################################################
# File Name: ComfortableTrain.sh
# Author: ma6174
# mail: ma6174@163.com
# Created Time: Sun 06 Sep 2015 04:00:21 PM CST
#########################################################################
#!/bin/bash

echo "####################################################################"
echo "本系统使用说明:
		1、需要先进行一次预定，查看第一次买时剩余票、及尾数
		2、以后可以通过查询剩余票数，知道现在购买可以买到的座位尾号
		3、实际情况以网络状况为准"
echo "####################################################################"
echo "请输入预定剩余票数"
read surplusTic
echo "预定时剩余票数为：$surplusTic"
echo "请输入预定时买到的座位尾号"
read mantissa
echo "预定买到票的尾号是：$mantissa"
echo "请输入当前剩余票数"
read currentSurplus
echo "当前剩余票数为：$currentSurplus"

function currentSeatNum(){
	#通过条件如果尾号大于前面俩数之和，需要结果加10
	((tmp = surplusTic%10 + mantissa - currentSurplus%10))
	if [ $tmp -lt 0 ]
	then
		return $(($tmp + 10))
	else
		return $tmp
	fi
}

currentSeatNum
echo "你以迅雷不及掩耳之势购买，可以买到的座位尾号是$?"

