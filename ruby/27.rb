require "helper"

def quadratic(a,b,n)
  n*n + a*n + b
end

helper = Helper.new

longest = 0
la = 0
lb = 0

(-1000..1000).each do |a|
  (-1000..1000).each do |b|
    n = 0
    while helper.isprime(quadratic(a,b,n)) == 1 do
      n += 1
    end
    if n > longest
      longest = n
      puts "Longest: a=#{a}, b=#{b}, n 0..#{n}"
    end
  end
end
