str = gets.chop.split('')
str_count = str.count

def palindrome?(array)
  count = array.count
  mid = count / 2
  array[0..mid - 1] == array[mid + 1..-1].reverse
end


if str_count == 3
  return puts palindrome?(str) ? 'Yes' : 'No'
else
  a = palindrome?(str)
  b = palindrome?(str[0..((str_count - 1 / 2) - 1)])
  c = palindrome?([((str_count + 3) / 2) - 1..-1])
  return puts a && b && c ? 'Yes' : 'No'
end
