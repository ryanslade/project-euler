package euler

import "math"

func IsPrime(n uint64) bool {
	if n == 1 {
		return false
	}
	if n < 4 {
		return true
	}
	if n%2 == 0 {
		return false
	}
	if n < 9 {
		return true
	}
	if n%3 == 0 {
		return false
	}

	r := uint64(math.Sqrt(float64(n)))
	f := uint64(5)

	for f <= r {
		if n%f == 0 {
			return false
		}
		if n%(f+2) == 0 {
			return false
		}
		f = f + 6
	}

	return true
}
