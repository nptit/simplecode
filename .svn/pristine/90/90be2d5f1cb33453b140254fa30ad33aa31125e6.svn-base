#!/bin/bash
xyz23 ()
{
  echo "$FUNCNAME now executing."
  # 正常情况下打印: xyz23 now executing.
  # 在个别版本的bash中，并不支持$FUNCNAME内置变量
}

xyz23

echo "FUNCNAME = $FUNCNAME"        # FUNCNAME =
# 超出函数的作用域就变为null值了.
