#!/usr/bin/env python3
n, a, b = map(int, input().split())
c = a * n
print(c if c <= b else b)
