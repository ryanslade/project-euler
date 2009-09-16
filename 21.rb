class Array
  def sum
    self.inject(0) { |mem, var| mem += var }
  end
end

def d(n)
  factors = []
  (n-1).downto(1).each { |e| factors << e if (n % e == 0) }
  factors.sum
end

class Numeric
  def amicable?
    d(d(self)) == self && d(self) != self
  end
end

amicables = []
(1..9999).each do |n|
  if n.amicable?
    amicables << n
    puts n
  end
end

puts "Sum: #{amicables.sum}"
