terms = []

(2..100).each do |a|
  (2..100).each do |b|
    terms << a**b
  end
end

puts terms.uniq.length
