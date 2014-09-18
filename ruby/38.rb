require "helper"
n = 2

limit = 9876
done = false
largest = 0

while n < limit do
  digits = n.to_s
  x = 2
  while digits.length < 9 do
    digits += (x*n).to_s
  end
  
  if digits.length == 9 && digits.to_i > largest && Helper.pandigital?(digits.to_i)
      largest = digits.to_i
      puts "Largest: #{digits}, n=#{n}"
  end
  
  n += 1
  puts "n: #{n}" if (n % 1000000 == 0)
end