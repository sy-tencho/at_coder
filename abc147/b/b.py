#!/usr/bin/env python3
s = input()
s = list(s)
r = list(reversed(s))
l = len(s) // 2

count = 0
for i in range(l):
  if s[i] != r[i]:
    count += 1

print(count)
