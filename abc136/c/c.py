#!/usr/bin/env python3
n = int(input())
h = list(map(int, input().split()))

m = 0
flag = True

for i in h:
  if m > i + 1:
    flag = False
    break

  if i > m:
    m = i

print('Yes' if flag else 'No')
