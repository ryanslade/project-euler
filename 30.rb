def sum_of_powers(n, p)
  n.to_s.each_char.to_a.collect { |x| x.to_i**p }.inject(0) { |mem, var| mem += var }
end

numbers = []

# Not sure how to figure out when to stop

(2..2000000).each do |n|
  numbers << n if sum_of_powers(n, 5) == n
end

puts numbers.inject(0) { |mem, var| mem += var }
