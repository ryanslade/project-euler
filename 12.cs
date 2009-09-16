using System;
using System.Linq;
using System.Collections.Generic;

public static class Solver
{
	public static Dictionary<int,int> factorCounts = new Dictionary<int,int>();
	
	public static void Main()
	{
		int largest = 1;
		int num = 1;
		
		while (true)
		{
			int t = Triangle(num);
			int nf = NumFactors(t);
			if (nf > largest)
			{
				largest = nf;
				Console.WriteLine(t+": "+largest);
			}
			
			if (largest >= 500)
			{
				break;
			}
			
			num++;
		}
	}
	
	public static int Triangle(int n)
	{
		return (n*(n+1))/2;
	}
	
	public static int NumFactors(int n)
	{
		int count = 0;
		
		for (int i = n; i > 0; i--)
		{
			if (factorCounts.ContainsKey(n))
			{
				count += factorCounts[i];
				break;
			}
			else if (n % i == 0)
			{
				count += 1;
			}
		}
		
		if (!factorCounts.ContainsKey(n))
		{
			factorCounts.Add(n,count);
		}
		
		return count;
	}
}