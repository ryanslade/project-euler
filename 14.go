package main

import (
	"fmt"
)

func main() {
	var longest uint = 0
	var i uint = 1

	for i < 1000000 {
		var count uint = 0
		calculateChain(i, &count)
		if count > longest {
			longest = count
			fmt.Println(count)
		}

		i++
	}
}

func calculateChain(n uint, count *uint) uint {
	*count++

	if n == 1 {
		return 1
	} else if (n % 2) == 0 {
		return calculateChain(n/2, count)
	} else {
		return calculateChain(3*n+1, count)
	}

	return 0
}
