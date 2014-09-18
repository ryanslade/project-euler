require "helper"

puts Helper.factorial(100).to_s.each_char.inject(0) { |mem, var| mem + var.to_i }