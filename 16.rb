puts (2**1000).to_s.each_char.inject(0) { |mem, var| mem += var.to_i }
