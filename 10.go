package ten

import (
	"./euler"
	"fmt"
)

func calculate() {
	total := uint64(0)

	for i := uint64(1); i < 2000001; i++ {
		if euler.IsPrime(i) {
			total += i
		}
	}

	fmt.Println(total)
}
