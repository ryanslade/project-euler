def digital_sum(a,b) 
  (a**b).to_s.each_char.to_a.collect { |x| x.to_i }.inject(0) { |mem, var| mem += var }
end

largest = 0

(1..100).each do |a|
  (1..100).each do |b|
    sum = digital_sum(a,b)
    largest = sum if sum > largest
  end
end

puts largest
