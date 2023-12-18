package main

import (
	"fmt"
	"math/rand"
	"time"
)

func main() {
	// Prompt the user to press enter to start the game
	fmt.Println("Enter for game")
	// _ = fmt.Scanln()
	fmt.Scanln()

	// Ask the user how many rounds they want to play
	fmt.Println("Kama paam you want game?")
	var n int
	// fmt.Scanln(_, &n)
	n, _ = fmt.Scanln(&n)

	// Ask the user to guess a number between 1 and 50
	fmt.Println("Your number?")
	var num int
	// fmt.Scanln(_, &num)
	num, _ = fmt.Scanln(&num)

	// Generate a random number between 1 and 50
	rand.Seed(time.Now().UnixNano())
	x := rand.Intn(50) + 1

	// Play the game
	for i := 1; i <= n; i++ {
		fmt.Println(i, "paam")

		if num == x {
			fmt.Println("You are Win!")
			break
		} else {
			fmt.Println("You are LUZER")
		}
	}
}
