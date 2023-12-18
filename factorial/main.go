package main

import "fmt"

func factorial(n int) int {
	result := 1
	for i := n; i >= 1; i-- {
		result *= i
	}
	return result
}

func main() {
	fmt.Println("Your number?")
	var number int
	fmt.Scanln(&number)
	// number := 5
	result := factorial(number)
	fmt.Printf("Факториал числа %d равен %d.\n", number, result)
}
