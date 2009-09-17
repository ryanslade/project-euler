require "date"

d = Date.civil(1901,1,1)
count = 0

while d != Date.civil(2001,1,1) do
  count += 1 if (d.wday == 0 && d.mday == 1)
  d = d.next
end

puts count
