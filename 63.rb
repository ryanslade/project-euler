done = false
n = 1
satisfied = []

while not done
  inner = 1
  result = 1
  while result.to_s.length <= n
    result = inner**n
    if result.to_s.length == n
      satisfied << result
      puts "#{inner}**#{n} = #{result} (#{satisfied.length})"
    end
    inner += 1
  end
  n += 1
end

# Not sure how to decide when done..