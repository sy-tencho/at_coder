n, $x, $y = gets.chomp.split(' ').map(&:to_i)

def dist(a, b)
  a - b < ($x - a).abs + ($y - b).abs + 1 ? a - b : ($x - a).abs + ($y - b).abs + 1
end

(1..n-1).each do |i|
  count = 0
  (1..n-1).each do |j|
    b = i + j
    count += 1 if dist(j, b) == i

    rmn = i - ($x - j).abs - 1

    if rmn > 0
      back = $y - rmn
      count += 1 if back != b && dist(j, back)

      forward = $y + rmn
      count += 1 if forward != b && dist(j, forward)
    elsif rmn == 0 && $y != b && dist(j, $y) == i
      count += 1
    end
  end

  puts count
end