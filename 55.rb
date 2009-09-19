def lychrel?(n, step=0)
  return true if step == 50
  to_test = n + n.to_s.reverse.to_i
  return false if (to_test.to_s.reverse == to_test.to_s)
  return lychrel?(to_test, step+1)
end

count = 0

(1..9999).each { |n| count += 1 if lychrel?(n) }

puts count
