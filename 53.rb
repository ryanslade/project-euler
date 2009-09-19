require "helper"

count = 0

(1..100).each do |n|
  (1..100).each do |r|
    count += 1 if Helper.combinations(n,r) > 1000000
  end
end

puts count
