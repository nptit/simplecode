let "t1 = ((5 + 3, 7 - 1, 15 - 4))"
echo "t1 = $t1"               # t1 = 11

let "t2 = ((a = 9, 15 / 3))"  # 设置"a"并且计算"t2".
echo "t2 = $t2    a = $a"     # t2 = 5    a = 9

#逗号操作符可以连接两个或多个算术运算。所有的操作都会被运行（可能会有负作用），但是只会返回最后操作的结果。
