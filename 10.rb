require "helper"

puts (1...2000000).inject(0) { |mem, var| Helper.prime?(var) ? mem+var : mem }
