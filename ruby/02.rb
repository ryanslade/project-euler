def fib(limit, nums=[1,2])
  next_num = nums[-1]+nums[-2]
  return (next_num > limit) ? nums : fib(limit, nums << next_num)
end

puts fib(4000000).select { |n| n % 2 == 0 }.inject(0) { |m, v| m+v }
