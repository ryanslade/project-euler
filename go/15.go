package main

import (
	"fmt"
)

func solve(size int64) int64 {
	return getRoutes(size, 0, 0, 0)
}

func getRoutes(size, x, y, accu int64) int64 {
	if x == size && y == size {
		return accu + 1
	}

	if x > size || y > size {
		return accu
	}

	return getRoutes(size, x+1, y, accu) + getRoutes(size, x, y+1, accu)
}

func main() {
	result := solve(20)

	fmt.Println("Solved!: ", result)
}
