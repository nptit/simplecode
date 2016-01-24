#!/bin/bash

# 逐字节比较a b两个文件是否相同
if cmp a b &> /dev/null  # 禁止输出.
then echo "Files a and b are identical."
else echo "Files a and b differ."
fi

# 非常有用的"if-grep"结构:
# ------------------------
if grep -q Bash file
then echo "File contains at least one occurrence of Bash."
fi

word=Linux
letter_sequence=inu
if echo "$word" | grep -q "$letter_sequence"
# "-q" 选项是用来禁止输出的.
then
 echo "$letter_sequence found in $word"
else
 echo "$letter_sequence not found in $word"
fi

# 将打印Command failed
if COMMAND_WHOSE_EXIT_STATUS_IS_0_UNLESS_ERROR_OCCURRED
then echo "Command succeeded."
else echo "Command failed."
fi
