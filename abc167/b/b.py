a, b, c, k = map(int, input().split())

if k <= a:
  print(1 * k)
elif k > a and k <= a + b:
  print(a * 1)
else:
  print(a * 1 + ((k - a - b) * -1))
