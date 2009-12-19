require "helper"

largest = 0

(9.downto(2)).each do |n|
  numbers = (1..n).to_a.permutation.to_a.sort.reverse
  numbers.each do |x|
    t = x.inject("") { |mem, var| mem + var.to_s }.to_i
    if Helper.prime?(t)
      largest = t
      break
    end
  end
  break unless largest == 0
end

puts largest