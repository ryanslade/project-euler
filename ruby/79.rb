input = File.new("keylog.txt", "r")
codes = []
input.each_line { |line| codes << line.strip if line }
codes.uniq!

digits = []
codes.each { |c| c.each_char { |ch| digits << ch } }
digits.uniq!

length = 3
done = false

def valid?(seq, code)
  sa = seq.each_char.to_a
  ca = code.each_char.to_a
  positions = sa.collect { |n| ca.index(n) }
  return false if positions.any? { |p| p.nil? }
  return false if positions.sort != positions
  true
end

while !done do
  puts "Trying code of length: #{length}"
  
  digits.permutation(length).each do |p|
    if codes.all? { |c| valid?(c, p.to_s) }
      puts "Found: #{p}"
      done = true
    end
  end
  
  length += 1
end
