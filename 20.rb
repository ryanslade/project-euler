def fact(n)
  return 1 if n == 1
  return n * fact(n-1)
end

puts fact(100).to_s.each_char.inject(0) { |mem, var| mem += var.to_i }