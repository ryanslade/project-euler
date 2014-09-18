result = []

(1..1000).each do |a|
  (a+1..1000).each do |b|
    (b+1..1000).each do |c|
      if (a+b+c == 1000) && (a**2+b**2 == c**2)
        result = [a,b,c]
        break
      end
    end
  end
end

puts result.inspect
puts result[0]*result[1]*result[2]

