#!/bin/bash

var="'(]\\{}\$\""
echo $var        # '(]\{}$"
echo "$var"      # '(]\{}$"     #同上

echo

IFS='\'
echo $var        # '(] {}$"     \ 字符被空白符替换了, 为什么?
echo "$var"      # '(]\{}$"
echo '$var'      # $var

exit 0
