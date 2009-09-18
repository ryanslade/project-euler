using System;
using System.Linq;
using System.Collections.Generic;

public static class Solver
{
	public static void Main()
	{
		List<int> found = new List<int>();
		int n = 2;
		bool done = false;
		while (!done)
		{
			Console.WriteLine(n);
			if (GetPrimeFactors(n).Count == 4)
			{
				found.Add(n);
				if (found.Count == 4)
				{
					if ((found[3] - found[0]) == 3)
					{
						done = true;
					}
					else
					{
						found = found.GetRange(1,3);
					}
				}
			}
			
			n++;
		}
		
		Console.WriteLine(found[0]);
	}
	
	public static List<int> GetPrimeFactors(int n)
	{
		List<int> factors = new List<int>();
		
		for (int i = 2; i < n/2; i++)
		{
			if ((n%i == 0) && (IsPrime(i)))
			{
				factors.Add(n);
			}
		}
		return factors;
	}
	
	public static bool IsPrime(int n)
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
			int r = Convert.ToInt32(System.Math.Sqrt(n));
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