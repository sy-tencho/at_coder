#!/usr/bin/env python3
n, l = map(int, input().split())

li = list(i for i in range(1, n+1, 1))
ab = 10000
ans = 0

for i in li:
  if abs(l + i - 1) < ab:
    ab = abs(l + i - 1)
    ans = l + i - 1

su = sum(li) + n * l - n

print(su - ans)
