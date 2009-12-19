def palindrome?(n, base=10)
  n.to_s(base) == n.to_s(base).reverse
end

palindromes = []

(1..1000000).each do |n|
  palindromes << n if palindrome?(n) && palindrome?(n,2)
end

puts palindromes.inject(0) { |mem, var| mem + var }
