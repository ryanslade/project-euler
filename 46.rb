require "helper"

h = Helper.new
n = 1
done = false

squares = (1..100).to_a.collect { |e| e*e }

while !done do
  n += 2
  
  this_try = false
  if h.isprime(n) == 0 # Is an odd composite
    (n-1).downto(2).each do |x|
      if (h.isprime(x) == 1) && squares.any? { |s| x+2*s == n }
        this_try = true
        break
      end
    end
  else
    this_try = true
  end
  
  done = !this_try
end

puts n