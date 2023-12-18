package main

import (
	"fmt"
	"math/rand"
	"time"
)

func main() {
	for {
		fmt.Print("\033[H\033[2J")
		// Seed the random number generator with the current time
		rand.Seed(time.Now().UnixNano())

		// Generate a random number between 1 and 50
		randomNumber := rand.Intn(50) + 1

		fmt.Println(randomNumber)
		time.Sleep(500 * time.Millisecond)
	}
}
