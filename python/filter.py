#!/usr/bin/python
def func(a):
    if a > 100:
        return True;
    else:
        return False;

print (list(filter(func,[10,56,101,500])));
