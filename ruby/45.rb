def triangle(n)
  n*(n+1)/2
end

def pentagonal(n)
  n*(3*n-1)/2
end

def hexagonal(n)
  n*(2*n-1)
end

found = false
n = 286
answer = 0

while !found
  t = triangle(n)
  puts "T(#{n}) = #{t}"
  
  p = false
  n.downto(1).each do |x|
    pent = pentagonal(x)
    if pent <= t
      p = (pent == t)
      break
    end
  end
  
  h = false
  if p
    n.downto(1).each do |x|
      hex = hexagonal(x)
      if hex <= t
        h = (hex == t)
        break
      end
    end
  end
  
  if (p && h)
    answer = t
    found = true
  end
  
  n += 1
end

puts answer