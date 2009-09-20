def diagonal_sum(dimension)
  n = 1
  sum = 1
  2.step(dimension-1,2).each do |s|
    4.times do |x|
      n += s
      sum += n
    end
  end
  
  sum
end

puts diagonal_sum(1001)
