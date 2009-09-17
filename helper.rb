class Helper

  def self.factorial(n)
    return 1 if (n == 0) || (n == 1)
    return n * factorial(n-1)
  end

  def self.is_prime?(n)
    if (n == 1) 
      return false
  	elsif (n < 4) 
  	  return true
  	elsif (n % 2 == 0) 
  	  return false
  	elsif (n < 9) 
  	  return true
  	elsif (n % 3 == 0) 
  	  return false
  	else
  		r = Math.sqrt(n)
  		f = 5;
  		while (f <= r) do
  			return false if (n % f == 0)
  			return false if (n % (f+2) == 0)
  			f=f+6
  		end
  		return true
  	end
  end

end
