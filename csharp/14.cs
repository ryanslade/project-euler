using System;
using System.Linq;
using System.Collections.Generic;

public static class Solver
{
	public static void Main()
	{
		int longest = 0;
		
		for (int i = 1; i < 1000000; i++)
		{
			int count = 0;
			CalculateChain(i, ref count);
			if (count > longest)
			{
				longest = count;
				Console.WriteLine(i+": "+count);
			}
		}
	}
	
	public static int CalculateChain(int n, ref int count)
	{
		count++;
		
		if (n == 1)
			return 1;
		
		if (n % 2 == 0)
			return CalculateChain(n/2, ref count);
		else
			return CalculateChain(3*n+1, ref count);
	}
	
	
}