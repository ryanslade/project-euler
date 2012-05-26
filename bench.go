package main

import (
	"./euler"
)

func main() {
	for i := uint(2); i < 2000000; i++ {
		euler.IsPrime(i)
	}
}
