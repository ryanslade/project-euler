def sum_of_squares(limit)
  (1..limit).inject(0) { |mem, var| mem += var**2 }
end

def square_of_sums(limit)
  (1..limit).inject(0) { |mem, var| mem+=var } ** 2
end

puts square_of_sums(100) - sum_of_squares(100)