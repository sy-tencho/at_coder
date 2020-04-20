#!/usr/bin/env python3
n = int(input())
d = list(map(int, input().split()))

d.sort()
h = n // 2 - 1

a = d[h]
b = d[h + 1]

print(b - a)