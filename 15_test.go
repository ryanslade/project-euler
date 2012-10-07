package fifteen

import (
	"testing"
)

func TestExample(t *testing.T) {
	r := solve(2)
	e := 6

	if r != e {
		t.Errorf("Expected %v, got %v", e, r)
	}
}

func TestSolve(t *testing.T) {
	r := solve(20)
	e := 6

	if r != e {
		t.Errorf("Expected %v, got %v", e, r)
	}
}
