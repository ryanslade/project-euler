package main

import (
	"fmt"
)

func main() {
	var longest uint = 0
	var i uint = 1

	for i < 1000000 {
		count := calculateChain(i)
		if count > longest {
			longest = count
			fmt.Println(count)
		}

		i++
	}
}

func calculateChain(n uint) uint {
	var count uint = 0
	for n != 1 {
		if (n % 2) == 0 {
			n = n / 2
		} else {
			n = 3*n + 1
		}
		count++
	}
	return count + 1
}
