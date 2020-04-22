#!/usr/bin/env python3
n, d = map(int, input().split())
l = []
ans = []

for i in range(n):
  l.append(list(map(int, input().split())))

for i in range(n-1):
  for j in range(i+1, n, 1):
    total = 0
    for k in range(d):
      total += abs(l[i][k] - l[j][k]) ** 2

    ans.append(total)

cnt = 0

for i in ans:
  for j in range(i+1):
    if j**2 == i:
      cnt += 1
      break

print(cnt)
