package hello

import "testing"

func TestMain(t *testing.T) {
	result := Main()
	want := "Hello World"
	if result != want {
		t.Errorf("hello.Main was incorrect, got: %s, want: %s", result, want)
	}
}