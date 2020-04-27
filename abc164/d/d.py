#!/usr/bin/env python3
s = input()[::-1]

sm = 0

cnts = [0] * 2019
cnts[0] = 1

d = 1

for c in s:
  sm += int(c) * d
  sm %= 2019
  d *= 10
  d %= 2019
  cnts[sm] += 1

ans = 0

for cnt in cnts:
  ans += cnt * (cnt - 1) // 2

print(ans)
