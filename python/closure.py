#!/usr/bin/python

def line_conf(a, b):
    def line(x):
        return a*x + b;
    return line;

line1 = line_conf(1, 1); # y = x + 1
line2 = line_conf(4, 5); # y = 4x + 5
print(line1(5), line2(5));# 6 25
