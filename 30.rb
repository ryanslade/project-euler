def sum_of_powers(n, p)
  n.to_s.each_char.to_a.collect { |x| x.to_i**p }.inject(0) { |mem, var| mem += var }
end

# Not sure how to figure out when to stop
numbers = (2..2000000).select { |n| sum_of_powers(n, 5) == n }

puts numbers.inject(0) { |mem, var| mem += var }
