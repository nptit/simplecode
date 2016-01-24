#!/bin/bash
# 使用((...))结构操作一个变量, C语言风格的变量操作.

echo

(( a = 23 ))  # C语言风格的变量赋值, "="两边允许有空格.
echo "a (initial value) = $a"

(( a++ ))     # C语言风格的后置自加.
echo "a (after a++) = $a"

(( a-- ))     # C语言风格的后置自减.
echo "a (after a--) = $a"


(( ++a ))     # C语言风格的前置自加.
echo "a (after ++a) = $a"

(( --a ))     # C语言风格的前置自减.
echo "a (after --a) = $a"

echo

########################################################
#  注意: 就像在C语言中一样, 前置或后置自减操作
#+ 会产生一些不同的副作用.

n=1; let --n && echo "True" || echo "False"  # False
n=1; let n-- && echo "True" || echo "False"  # True

echo

(( t = a<45?7:11 ))   # C语言风格的三元操作.
echo "If a < 45, then t = 7, else t = 11."
echo "t = $t "        # Yes!

echo

# 你也可以参考一些 "for" 和 "while" 循环中使用((...))结构的例子.

exit 0
