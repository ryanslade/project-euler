def triangle(n)
  yield n*(n+1)/2
end

def get_factors_count(n)
  count = 0
  n.downto(1).each { |x| count += 1 if n % x == 0 }
  count
end

n = 1
done = false
largest = 1
loop do
  triangle(n) do |t|
    factor_count = get_factors_count(t)
    if (factor_count > largest)
      puts "Num: #{t}, Factors: #{factor_count}"
      largest = factor_count
    end
    done = factor_count >= 500
  end
  n += 1
  break if done
end
