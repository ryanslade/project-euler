require "helper"

def primes(limit)
	count = 0
	n = 1
	while count < limit do
		if Helper.prime?(n)
			count += 1
			puts "#{count}: #{n}"
		end
		
		n += 1
	end
end

primes(10001)

# 41 minutes to run!?!
# c# version with no optimisation took 2.5 min
