require "helper"
primes = (1000..9999).select { |p| Helper.prime?(p) }

primes.each do |p|
  perms = p.to_s.each_char.to_a.collect { |c| c.to_i }.permutation.to_a.collect { |y| y.to_s.to_i }
  (1..(10000-p)/2).each do |n|
    t = [p, p+n, p+n*2]
    if (t.all? { |x| perms.include?(x) }) && (t.all? { |y| Helper.prime?(y) })
      puts "Found: n=#{n}, #{t.inspect}"
    end
  end
end

