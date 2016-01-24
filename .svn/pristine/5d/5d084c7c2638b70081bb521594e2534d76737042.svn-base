#!/bin/bash

# 这里应该理解为子if/then当做一个整体作为测试条件
if echo "Next *if* is part of the comparison for the first *if*."
   if [[ $comparison = "integer" ]]
     then (( a < b )) # (( 算数表达式 ))， 用作算数运算
   else
     [[ $a < $b ]]
   fi
then
 echo '$a is less than $b'
fi
