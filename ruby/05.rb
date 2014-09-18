num = 20
nums = 20.downto(1)
loop do
  num += 1
  if nums.all? { |n| num % n == 0 }
    puts num
    break
  end
end

