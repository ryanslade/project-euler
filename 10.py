import helper

total = 0
for i in range(1,2000000):
	if helper.isPrime(i):
		total += i
		
print total