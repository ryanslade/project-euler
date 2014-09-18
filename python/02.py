def fib(limit, nums=[1,2]):
	next = nums[-1]+nums[-2]
	if next > limit:
		return nums
	else:
		nums.append(next)
		return fib(limit, nums)
		
print sum([n for n in fib(4000000) if n % 2 == 0])
