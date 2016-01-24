 #!/bin/bash

 variable=\
 echo "$variable"
 # 不能正常运行 - 会报错:
 # test.sh: : command not found
 # 一个"裸体的"转义符是不能够安全的赋值给变量的.
 #
 #  事实上在这里"\"转义了一个换行符(变成了续航符的含义), 
 #+ 效果就是                variable=echo "$variable"
 #+                      不可用的变量赋值

 variable=\
 23skidoo
 echo "$variable"        #  23skidoo
                         #  这句是可以的, 因为
                         #+ 第2行是一个可用的变量赋值.

 variable=\ 
 #             \^    转义一个空格
 echo "$variable"        # 显示空格

 variable=\\
 echo "$variable"        # \

 variable=\\\
 echo "$variable"
 # 不能正常运行 - 报错:
 # test.sh: \: command not found
 #
 #  第一个转义符把第2个\转义了,但是第3个又变成"裸体的"了,
 #+ 与上边的例子的原因相同.

 variable=\\\\
 echo "$variable"        # \\
                         # 第2和第4个反斜线被转义了.
                         # 这是正确的.
