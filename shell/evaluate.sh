#    = 在这里是测试操作符

if [ "$string1" = "$string2" ]
# if [ "X$string1" = "X$string2" ] 是一种更安全的做法,
# 这样可以防止两个变量中的一个为空所产生的错误.
# (字符"X"作为前缀在等式两边是可以相互抵消的.)
then
  command
fi
