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

helper = Helper.new

(2..1000000).each do |n|
  if (helper.isprime(n) == 1)
    digits = rotations(n.to_s.each_char.to_a)
    if digits.all? { |d| helper.isprime(d.to_s.to_i) == 1 }
      count += 1
      puts n
    end
  end
end

puts "Total: #{count}"