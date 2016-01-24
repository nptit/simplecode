#!/bin/bash

stringZ=abcABC123ABCabc

echo ${#stringZ}                 # 15
expr length $stringZ             # 15

