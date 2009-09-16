x = 2
y = 3
n = 0
t = 4
while n.to_s.length < 1000 do
  
  n = x+y
  x = y
  y = n 
  t += 1
  
end

puts t




