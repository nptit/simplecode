#!/usr/bin/python
xl = [1,3,5]
yl = [9,12,13]

for (x,y) in zip(xl,yl):
    print (x,y); #1,9 3,12 5,13

L  = [ x**2 for (x,y) in zip(xl,yl) if y > 10]
print ("L",L); #[9,25]

#the same to
list1 = [];
for (x,y) in zip(xl,yl):
    if y > 10:
        list1.append(x**2);
print ("list1",list1); #[9,25]
