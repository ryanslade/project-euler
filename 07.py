import helper

def primes(limit):
	count = 0
	n = 1
	while True:
		if helper.isPrime(n):
			count += 1
			print "%s: %s" % (count, n)
		if count == limit:
			break
		n += 1
			
primes(10001)