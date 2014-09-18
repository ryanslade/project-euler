def sums
  999.downto(100).each do |a|
    999.downto(100).each do |b|
      x = a*b
      if (x.to_s == x.to_s.reverse)
        yield x
      end
    end
  end  
end

s = []
sums {|x| s << x}
puts s.uniq.sort.reverse.first
