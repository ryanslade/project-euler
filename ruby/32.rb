require "helper"

def factor_pairs(n)
  pairs = []
  (1..n/2).each do |x|
    if (n % x == 0)
      pairs << [x, n/x].sort
    end
  end
  pairs.uniq
end

def array_of_digits(n)
  n.to_s.each_char.to_a.collect { |d| d.to_i }
end

pandigitals = []
test_case = (1..9).to_a
(1..9999).each do |n|
  fp = factor_pairs(n)
  fp.each do |p|
    digits = array_of_digits(p[0])+array_of_digits(p[1])+array_of_digits(n)
    if digits.sort == test_case
      puts "#{p[0]} x #{p[1]} = #{n}"
      pandigitals << n
    end
  end
end

puts pandigitals.uniq.inject(0) { |mem, var| mem += var }
