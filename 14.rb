def calc_chain(n, &block)
  yield n
  return 1 if n == 1
  
  if (n%2 == 0)
    return calc_chain(n/2, &block)
  else
    return calc_chain(3*n+1, &block)
  end
end

longest = 0

1000000.downto(1).each do |n|
  chain = []
  calc_chain(n) { |x| chain << x }
  if (chain.length > longest)
    longest = chain.length
    puts "#{n}, length: #{chain.length} "
  end
end
