#!/usr/bin/env python3
s = list(input())
f = True

for i in range(len(s)):
  if i == len(s) - 1:
    break
  if s[i] == s[i+1]:
    f = False
    break

print('Good' if f else 'Bad')
