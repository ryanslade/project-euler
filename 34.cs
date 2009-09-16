using System;
using System.Linq;
using System.Collections.Generic;

public static class Solver
{
	public static void Main()
	{
		List<int> numbers = new List<int>();
		
		int n = 3;
		
		while (true)
		{
			int sum_fact = 0;
			
			for (int i = 0; i < n.ToString().Length; i++)
			{
				sum_fact += Factorial(Convert.ToInt32(n.ToString()[i].ToString()));
			}
			
			if (sum_fact == n)
			{
				Console.WriteLine(n);
				numbers.Add(n);
			}
			
			n++;
		}
	}
	
	public static int Factorial(int n)
	{
		if (n == 0)
			return 1;
		if (n == 1)
			return 1;
		
		return (n*Factorial(n-1));
	}
}