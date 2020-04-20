a, b, c, d = map(int, input().split())

def euclid(a, b):
  if b == 0:
    return a
  return euclid(b, a % b)

x = c * d // euclid(c, d)

bd = b // d
bc = b // c
bx = b // x
bsum = b - bd - bc + bx

ad = (a - 1) // d
ac = (a - 1) // c
ax = (a - 1) // x
asum = (a - 1) - ad - ac + ax

print(bsum - asum)
