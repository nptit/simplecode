#!/bin/bash

#${var#Pattern}, ${var##Pattern} 从变量$var的开头删除最短或最长匹配$Pattern的子串。 “#”表示匹配最短，“##”表示匹配最长。
var1=abcd-1234-defg
echo "var1 = $var1"

t=${var1#*-*}
echo "var1 (with everything, up to and including first - stripped out) = $t"
#  t=${var1#*-}  也一样,
#+ 因为#匹配最短的字符串,
#+ 同时*匹配任意前缀, 包括空字符串.
# (感谢, Stephane Chazelas, 指出这点.)

t=${var1##*-*}
echo "If var1 contains a \"-\", returns empty string...   var1 = $t"


t=${var1%*-*}
echo "var1 (with everything from the last - on stripped out) = $t"
