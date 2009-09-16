require "helper"

numbers = []

n = 3

while true
  
  parts = n.to_s.each_char.to_a.collect { |i| i.to_i }
  sum_fact = 0 
  parts.each { |p| sum_fact += Helper.factorial(p) }
  
  if n == sum_fact
    puts n
    numbers << n
  end
  
  n += 1
  
end
