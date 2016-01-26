#!/usr/bin/python
def test(fn,a,b):
    print (fn(a,b));
test((lambda x,y: x**2 + y), 6, 9);
