require "helper"

def truncatable?(p)
  parts = []
  p_s = p.to_s
  (1..p_s.length).each do |n|
    parts << p_s[0,n]
    parts << p_s[-1*n..-1]
  end
  parts.collect { |x| x.to_i }.all? { |y| Helper.prime?(y) }
end

n = 11
t_primes = []


while t_primes.length < 11 do
  if truncatable?(n)
    t_primes << n 
    puts n
  end
  n += 1
end

sum = t_primes.inject(0) { |mem, var| mem + var }
puts "Sum: #{sum}"

