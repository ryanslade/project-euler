def get_values(n)
  r = []
  [2,3,4,5,6].each { |x| r << x*n }
  r.collect do |x|
    vals = [] 
    x.to_s.each_char {|s| vals << s}
    vals.sort.to_s
  end
end

n = 1
done = false

while !done

  n += 1
  puts n
  done = (get_values(n).uniq.length == 1)
  
end