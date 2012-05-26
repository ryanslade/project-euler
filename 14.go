package main

import "fmt"

func main() {
	var longest, i uint = 0, 1

	for ; i < 1000000; i++ {
		count := calculateChain(i)
		if count > longest {
			longest = count
			fmt.Println(count)
		}
	}
}

func calculateChain(n uint) uint {
	var count uint = 1
	for ; n != 1; count++ {
		if (n % 2) == 0 {
			n = n / 2
		} else {
			n = 3*n + 1
		}
	}
	return count
}
