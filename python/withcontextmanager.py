#!/usr/bin/python
# with context manager
with open("new.txt", "w") as f:
    print(f.closed);               # whether the file is open
    f.write("Hello World!");
print(f.closed);
