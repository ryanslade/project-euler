require "helper"

def get_prime_factors(n)
  factors = []
  (2..n/2).each do |x|
    factors << x if (n % x == 0) && Helper.prime?(x)
  end
  factors
end

n = 2
found = []
done = false

while !done
  puts n
  if get_prime_factors(n).length == 4
    found << n
    if (found.length == 4)
      if (found[3]-found[0] == 3)
        done = true
      else
        found = found[1..3]
      end
    end
  end
  n += 1
end

puts found.inspect
