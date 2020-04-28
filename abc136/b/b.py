#!/usr/bin/env python3
n = int(input())

if n < 10:
  print(n)
elif n >= 10 and n < 100:
  print(9)
elif n >= 100 and n < 1000:
  print(9 + n - 100 + 1)
elif n >= 1000 and n < 10000:
  print(909)
elif n >= 10000 and n < 100000:
  print(909 + n - 10000 + 1)
elif n == 100000:
  print(909 + 99999 - 10000 + 1)
