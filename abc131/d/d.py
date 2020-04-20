n = int(input())
t = [list(map(int, input().split())) for _ in range(n)]

t.sort(key=lambda x: x[1])

cnt = 0
flag = True

for i in t:
  cnt += i[0]

  if cnt > i[1]:
    flag = False
    break

print('Yes' if flag else 'No')
