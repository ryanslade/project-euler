@letters = ("A".."Z").to_a

def get_score(name)
  score = 0
  name.each_char { |c| score += @letters.index(c)+1 }
  score
end

input = File.new("names.txt", "r").read
names = input.scan(/"(.*?)"/).sort.flatten

total = 0
names.each_index do |i|
  total += (i+1)*get_score(names[i])
end

puts total
