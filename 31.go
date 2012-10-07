package main

import (
	"fmt"
)

func countChange(money int, coins []int) int {
	if money == 0 {
		return 1
	}
	if money < 0 {
		return 0
	}
	if len(coins) == 0 && money != 0 {
		return 0
	}

	return countChange(money-coins[0], coins) + countChange(money, coins[1:])
}

func main() {
	result := countChange(200, []int{1, 2, 5, 10, 20, 50, 100, 200})
	fmt.Println(result)
}
