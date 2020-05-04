$x = gets.chop.to_i

def rec(y, c)
  c += 1
  y = (y * 1.01).floor

  if y >= $x
    puts c
  else
    rec(y, c)
  end
end

rec(100, 0)
