
mkdir ~/source
mkdir ~/dest
touch ~/source/s.tar

(cd ~/source && tar cf - . ) | \
(cd ~/dest && tar xpvf -)
# 重复Alan Cox的目录数拷贝命令,
# 但是分成两行是为了增加可读性.

# 也可以使用如下方式:
# tar cf - -C ~/source/ . |
# tar xpvf - -C ~/dest/
