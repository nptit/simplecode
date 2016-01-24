#!/bin/bash
# 使用10种不同的方法计数到11.

n=1; echo -n "$n "

let "n = $n + 1"   # let "n = n + 1"  也可以.
echo -n "$n "


: $((n = $n + 1))
#  ":" 是必需的, 因为如果没有":"的话,
#+ Bash将会尝试把"$((n = $n + 1))"解释为一个命令.
echo -n "$n "

(( n = n + 1 ))
#  上边这句是一种更简单方法.
#  感谢, David Lombard, 指出这点.
echo -n "$n "

n=$(($n + 1))
echo -n "$n "

: $[ n = $n + 1 ]
#  ":" 是必需的, 因为如果没有":"的话,
#+ Bash将会尝试把"$[ n = $n + 1 ]"解释为一个命令.
#  即使"n"被初始化为字符串, 这句也能够正常运行.
echo -n "$n "

n=$[ $n + 1 ]
#  即使"n"被初始化为字符串, 这句也能够正常运行.
#* 应该尽量避免使用这种类型的结构, 因为它已经被废弃了, 而且不具可移植性.
#  感谢, Stephane Chazelas.
echo -n "$n "

# 现在来一个C风格的增量操作.
# 感谢, Frank Wang, 指出这点.

let "n++"          # let "++n"  也可以.
echo -n "$n "

(( n++ ))          # (( ++n )  也可以.
echo -n "$n "

: $(( n++ ))       # : $(( ++n )) 也可以.
echo -n "$n "

: $[ n++ ]         # : $[[ ++n ]] 也可以.
echo -n "$n "

echo

exit 0
