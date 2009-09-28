require "helper"

helper = Helper.new

primes = (2..1000000).to_a.select { |p| helper.isprime(p) == 1 }
biggest = [0,0]

primes.each_index do |i|  
  sofar = []
  this_round = []
  sum = primes[i]
  count = 1
  (i+1..primes.length-1).each do |j|
    count += 1
    sum += primes[j]
    break if sum > 1000000
    if helper.isprime(sum) == 1
      this_round = [sum, count]
    end
  end
  
  if !this_round.empty? && this_round[1] > biggest[1]
    biggest = this_round
    puts "Largest: #{biggest[0]}, #{biggest[1]}"
  end
end
