input = File.new("11.txt", "r").read
data = input.split("\n").collect { |n| n.split(" ").collect { |x| x.to_i } }

results = []

(0..19).each do |x|
  (0..19).each do |y|
      results << (0..3).inject(1) { |m, v| data[x+v][y]*m } if x <= 16 # right
      results << (0..3).inject(1) { |m, v| data[x-v][y]*m } if x >= 3 # left
      results << (0..3).inject(1) { |m, v| data[x][y+v]*m } if y <= 16 # down
      results << (0..3).inject(1) { |m, v| data[x][y-v]*m } if y >= 3 # up
      
      results << (0..3).inject(1) { |m, v| data[x+v][y+v]*m } if (x <= 16) && (y <= 16) # right, down
      results << (0..3).inject(1) { |m, v| data[x-v][y-v]*m } if (x >= 3) && (y >= 3) # left, up
      
      results << (0..3).inject(1) { |m, v| data[x+v][y-v]*m } if (x <= 16) && (y >= 3) # right, up
      results << (0..3).inject(1) { |m, v| data[x-v][y+v]*m } if (x >= 3) && (y <= 16) # left, down
  end
end

puts results.sort.last