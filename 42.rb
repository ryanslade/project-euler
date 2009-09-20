def get_triangles(limit)
  triangles = []
  n = 1

  loop do
    t = (n+1)*(n.to_f/2)
    triangles << t
    break if t > limit
    n += 1
  end

  triangles
end

def word_value(word)
  letters = ("A".."Z").to_a
  word.each_char.to_a.inject(0) { |mem, var| mem += letters.index(var)+1 }
end

words = File.new("words.txt", "r").read.scan(/"(.*?)"/).sort.flatten
longest = words.sort { |a, b| a.length <=> b.length }.last.length
triangles = get_triangles(26*longest)

count = 0
words.each do |w|
  count += 1 if triangles.include?(word_value(w))
end
puts count

