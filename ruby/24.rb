permutations = []
puts "Generating permutations"
(0..9).to_a.permutation.each do |p|
  permutations << p.to_s
end
puts "Sorting permutations"
permutations.sort!

puts permutations[999999]

