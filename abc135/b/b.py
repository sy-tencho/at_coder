#!/usr/bin/env python3
n = int(input())
p = list(map(int, input().split()))

cnt = 0

for i, el in enumerate(p):
  if i == 0: continue
  if  el < p[i-1]: cnt += 1

print('YES' if cnt <= 2 else 'NO')
