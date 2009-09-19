def primes(limit)
  (3..limit).step(2) do |i|
    yield i unless (3..i-1).any? { |x| i % x == 0 }
  end
end

def prime_factors(number)
  primes(number/2) { |p| yield p if number%p == 0}
end

prime_factors(600851475143) {|pf| puts pf}