require "rubygems"
require "inline"

class Helper

    inline do |builder|
    builder.c '
      int isprime(int n)
      {
        if (n <= 1)
          {
            return 0;
          }
        else if (n < 4)
          {
            return 1;
          }
        else if (n % 2 == 0)
          {
            return 0;
          }
        else if (n < 9) 
          {
            return 1;
          }
      	else if (n % 3 == 0) 
      	  {
      	    return 0;
      	  }
    	  else
    	    {
    	      int r = sqrt(n);
    	      int f = 5;
    	      while (f <= r)
    	        {
    	          if (n %f == 0)
    	            {
    	              return 0;
    	            }
    	          if(n %(f+2) == 0)
    	            {
    	              return 0;
    	            }
    	          f = f+6;
    	        }
    	      return 1;
    	    }
      }
    '
  end
  
  def self.factorial(n)
    return 1 if (n == 0) || (n == 1)
    total = n
    while n > 1 do
      n -= 1
      total = total*n
    end
    total
  end

  def self.prime?(n)
    if (n <= 1) 
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
  
  def self.factors(n)
    factors = [1]
    (2..n/2).each do |x|
      if (n % x == 0)
        factors << x
        a = n/x
        factors << a
        break if a < x
      end
    end
    factors.uniq - [n]
  end
  
  def self.abundant?(n)
    factors(n).inject(0) { |mem, var| mem += var } > n
  end
  
  def self.combinations(n, r)
    factorial(n) / (factorial(r)*factorial(n-r))
  end
  
  def self.pandigital?(n)
    digits = n.to_s.each_char.to_a.collect { |c| c.to_i }.sort
    digits == (1..n.to_s.length).to_a
  end

end
