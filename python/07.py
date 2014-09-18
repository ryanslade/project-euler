import helper

def primes(limit):
	count = 0
	n = 1
	while count < limit:
		if helper.isPrime(n):
			count += 1
			print "%s: %s" % (count, n)
			
		n += 1
			
primes(10001)