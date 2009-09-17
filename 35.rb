require "helper"

def rotations(array)
  rots = []
  array.length.times do |t|
    rot = []
    array.length.times do |q|
      rot << array[q-t]
    end
    rots << rot
  end
  rots
end

count = 0

(2..1000000).each do |n|
  if (Helper.is_prime?(n))
    digits = rotations(n.to_s.each_char.to_a)
    if digits.all? { |d| Helper.is_prime?(d.to_s.to_i) }
      count += 1
      puts n
    end
  end
end

puts "Total: #{count}"