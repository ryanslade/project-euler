object Euler14
{
    def get_chain(n: Long, c: Int = 0): Int = 
	{
		if (n == 1) 
		{
			return c + 1
		}
		else
		{
			if(n % 2 == 0) 
			{
				return get_chain(n / 2, c+1)
			}
			else
			{
				return get_chain(3 * n + 1, c+1)
			}
		} 
	}

    def main(args: Array[String])
    {
        var longest = 0

        for (i <- (1 to 1000000))
        {
        	val length = get_chain(i)

	        if (length > longest)
	        {
	        	longest = length
	            println(i + ", length: " + length)
	        }
        }

    }
}
