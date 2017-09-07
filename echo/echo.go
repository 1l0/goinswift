package main

import "C"
import "fmt"

//export EchoString
func EchoString(s string) string {
	fmt.Printf("%s\n", s)
	return s
}

//export EchoCString
func EchoCString(s *C.char) *C.char {
	fmt.Printf("%v\n", s)
	return s
}

//export EchoInt
func EchoInt(i int) int {
	fmt.Printf("%d\n", i)
	return i
}

//export EchoFloat
func EchoFloat(f float64) float64 {
	fmt.Printf("%f\n", f)
	return f
}

func main() {}
