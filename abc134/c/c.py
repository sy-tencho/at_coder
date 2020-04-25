#!/usr/bin/env python3
n = int(input())
l = [int(input()) for i in range(n)]

ls = sorted(l, reverse=True)

mx = ls[0]
sc = ls[1]


for i in l:
  if i == mx:
    print(sc)
  else:
    print(mx)
