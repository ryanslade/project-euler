require "helper"

def primes(limit)
  yield 2
  count = 1
  i = 3
  loop do
    if (Helper.is_prime?(i))
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
