total = 0

(1..1000).each do |n|
  total += n**n
end

puts total.to_s[-10..-1]