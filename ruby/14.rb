def chain_length(n, count=0)
  return count+1 if n == 1
  return (n%2 == 0) ? chain_length(n/2, count+1) : chain_length(3*n+1, count+1)
end

longest = 0

1.upto(1000000).each do |n|
  length = chain_length(n)
  if (length > longest)
    longest = length
    puts "#{n}, length: #{length}"
  end
end
