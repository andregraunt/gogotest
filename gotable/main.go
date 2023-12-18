package main

import "fmt"

func table_of_multiplication(n int) {
	for i := 1; i <= n; i++ {
		for j := 1; j <= n; j++ {
			fmt.Printf("%d\t", i*j)
		}
		fmt.Println()
		fmt.Println()
	}
}

func main() {
	fmt.Println()
	table_of_multiplication(10)
}
