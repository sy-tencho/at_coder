n, m, k = map(int, input().split())
x = [list(map(int, input().split())) for _ in range(n)]

total = 0
ans = {}

for i in x:
  total += i[0]

  for idx, j in enumerate(i):
    if i == 0:
      ans[str(idx)] = j
    else:
      ans[str(idx)] = j