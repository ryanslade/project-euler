class Helper

  def self.factorial(n)
    return 1 if (n == 0) || (n == 1)
    return n * factorial(n-1)
  end

end
