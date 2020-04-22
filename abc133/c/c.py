#!/usr/bin/env python3
l, r = map(int, input().split())

r = min(r, l+673)
ans = 2018

for i in range(l, r+1, 1):
  for j in range(i+1, r+1, 1):
    x = i*j%2019
    ans = min(ans, x)

print(ans)
