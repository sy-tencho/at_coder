n, m = gets.chop.split().map(&:to_s)

$judge = false

for i in 1..((n + m).to_i / 2)
  $judge = true if i * i == (n + m).to_i 
end

puts $judge ? 'Yes' : 'No'
