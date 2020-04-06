N, K= gets.split.map(&:to_i)

def judge(n, k)
  if k == 1
    puts 0
    exit
  end

  if n == 0
    puts 0
    exit
  end

  if n == k
    puts 0
    exit
  end

  t = n % k
  puts t < k - t ? t : k - t
end

judge(N, K)
