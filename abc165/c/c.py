#!/usr/bin/env python3
n, m, q = map(int, input().split())
x = [list(map(int, input().split())) for _ in range(q)]

ans = 0

def calc(A):
  score = 0
  for a, b, c, d in x:
    if A[b-1] - A[a-1] == c:
      score += d
  return score

def dfs(A):
  global ans

  if len(A) == n:
    score = calc(A)
    ans = max(ans, score)

  elif len(A) == 0:
    for i in range(1, m+1):
      dfs([i])

  else:
    for i in range(A[-1], m+1):
      dfs(A + [i])

dfs([])
print(ans)
