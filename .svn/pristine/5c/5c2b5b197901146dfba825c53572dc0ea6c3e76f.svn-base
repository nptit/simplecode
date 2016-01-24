#!/bin/bash

file_list="/bin/cat /bin/gzip /bin/more /usr/bin/less /usr/bin/emacs-20.7"
# 列出的文件都作为命令的参数.

# 加两个文件到参数列表中, 列出所有的文件信息.
ls -l /usr/lib/gconv /usr $file_list

echo "-------------------------------------------------------------------------"

# 如果我们将上边的两个空个转义了会产生什么效果?
ls -l /usr/lib/gconv\ /usr\ $file_list
# 错误: 因为前3个路径被合并成一个参数传递给了'ls -l'
#       而且两个经过转义的空格组织了参数(单词)分割.
