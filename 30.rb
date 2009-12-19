def sum_of_powers(n, p)
  n.to_s.each_char.to_a.collect { |x| x.to_i**p }.inject(0) { |mem, var| mem + var }
end

max_per_digit = 9**5
digits = 0
done = false

while (!done)
  digits += 1
  done = ("9"*digits).to_i > max_per_digit*digits
end

limit = ("9"*digits).to_i

numbers = (2..limit).select { |n| sum_of_powers(n, 5) == n }

puts numbers.inject(0) { |mem, var| mem + var }
