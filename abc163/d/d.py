n, k = map(int, input().split())
cnt = 0
mod = 10**9+7

for i in range(k, n+2):
  min = int(i * (i - 1) / 2) #等差数列の和
  max = int(i * (2 * n - i + 1) / 2)
  cnt += max - min + 1

print(cnt % mod)
