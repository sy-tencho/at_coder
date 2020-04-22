#!/usr/bin/env python3
n = int(input())
a = list(map(int, input().split()))

s = sum(a[::2]) - sum(a[1::2])
ans = []

for i in range(n):
  ans.append(s)
  s = 2 * a[i] - s

print(' '.join(list(map(str, ans))))