package main

import (
	"fmt"
	"time"
)

func main() {
	ticker := time.NewTicker(2 * time.Second)

	for {
		fmt.Println("hello")
		// time.Sleep(1 * time.Second)
		<-ticker.C

	}

}
