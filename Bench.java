class Bench 
{
    public static void main(String[] args) 
	{
        for (int i = 2; i < 2000000; i++)
		{
			IsPrime(i);
		}
    }

	public static boolean IsPrime(int n)
	{
		if (n == 1)
		{
			return false;
		}
		else if (n < 4)
		{
			return true;
		}
		else if (n % 2 == 0)
		{
			return false;
		}
		else if (n < 9)
		{
			return true;
		}
		else if (n % 3 == 0)
		{
			return false;
		}
		else
		{
			int r = (int)Math.sqrt(n);
			int f = 5;
			while (f <= r)
			{
				if (n % f == 0)
				{
					return false;
				}
				if (n % (f+2) == 0)
				{
					return false;
				}
				f=f+6;
			}
			return true;
		}
	}
}