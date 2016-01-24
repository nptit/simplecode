#!/bin/bash
# var-match.sh:
# 对字符串的前缀和后缀进行模式替换的一个演示.
#${var/#Pattern/Replacement} 如果变量var的前缀匹配Pattern，那么就使用Replacement来替换匹配到Pattern的字符串。 ${var/%Pattern/Replacement} 如果变量var的后缀匹配Pattern，那么就使用Replacement来替换匹配到Pattern的字符串。

v0=abc1234zip1234abc    # 变量原始值.
echo "v0 = $v0"         # abc1234zip1234abc
echo

# 匹配字符串的前缀(开头).
v1=${v0/#abc/ABCDEF}    # abc1234zip1234abc
# |-|
echo "v1 = $v1"         # ABCDEF1234zip1234abc
# |----|

# 匹配字符串的后缀(结尾).
v2=${v0/%abc/ABCDEF}    # abc1234zip123abc
#              |-|
echo "v2 = $v2"         # abc1234zip1234ABCDEF
#               |----|

echo

#  ----------------------------------------------------
#  必须匹配字符串的开头或结尾,
#+ 否则是不会产生替换结果的.
#  ----------------------------------------------------
v3=${v0/#123/000}       # 匹配, 但不是在开头.
echo "v3 = $v3"         # abc1234zip1234abc
# 不会发生替换.
v4=${v0/%123/000}       # 匹配, 但不是在结尾.
echo "v4 = $v4"         # abc1234zip1234abc
# 不会发生替换.

exit 0
${!varprefix*}, ${!varprefix@} 匹配所有之前声明过的，并且以varprefix开头的变量。
xyz23=whatever
xyz24=

a=${!xyz*}      # 展开所有以"xyz"开头的, 并且之前声明过的变量名.
echo "a = $a"   # a = xyz23 xyz24
a=${!xyz@}      # 同上.
echo "a = $a"   # a = xyz23 xyz24

# Bash, 版本2.04, 添加了这个功能.
