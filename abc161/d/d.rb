K = gets.chop.to_i

arr = (1..9).to_a

def lulun(num)
  tail = num.split('')[-1]

  prev = (tail.to_i - 1).to_s
  forw = (tail.to_i + 1).to_s

  if tail == '0'
    return [(num + tail).to_i, (num + forw).to_i]
  elsif tail == '9'
    return [(num + prev).to_i, (num + tail).to_i]
  else
    return [(num + prev).to_i, (num + tail).to_i, (num + forw).to_i]
  end
end

def generate(arr1, arr2, count) # 完成した配列と更新したい配列を渡す
  tmp = [] # 新しく作った分を入れる

  arr2.each do |el|
    tmp.concat(lulun(el.to_s))
  end

  arr1.concat(tmp)

  if arr1.count > count
    return arr1
  else
    generate(arr1, tmp, count)
  end
end

luluns = generate(arr, arr, K)

puts luluns[K - 1]
