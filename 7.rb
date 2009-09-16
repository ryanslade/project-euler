def is_prime?(n)
  if (n == 1) 
    return false
	elsif (n < 4) 
	  return true
	elsif (n % 2 == 0) 
	  return false
	elsif (n < 9) 
	  return true
	elsif (n % 3 == 0) 
	  return false
	else
		r = Math.sqrt(n)
		f = 5;
		while (f <= r) do
			return false if (n % f == 0)
			return false if (n % (f+2) == 0)
			f=f+6
		end
		return true
	end
end

def primes(limit)
  yield 2
  count = 1
  i = 3
  loop do
    if (is_prime?(i))
      count += 1
      yield [i,count]
      break if count == limit
    end
    i+=2
  end
end

primes(10001) {|x| puts "#{x[1]}: #{x[0]}" }

# 41 minutes to run!?!
# c# version with no optimisation took 2.5 min
