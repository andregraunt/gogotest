package main

import (
	"fmt"
	"math/rand"
	"time"
)

type Robot struct {
	x int
	y int
}

func (r *Robot) right() {
	r.x++
}

func (r *Robot) left() {
	r.x--
}

func (r *Robot) up() {
	r.y++
}

func (r *Robot) down() {
	r.y--
}

type Commander struct{}

func (c *Commander) move(r *Robot) {
	switch rand.Intn(4) {
	case 0:
		r.right()
	case 1:
		r.left()
	case 2:
		r.up()
	case 3:
		r.down()
	}
}

func main() {
	rand.Seed(time.Now().UnixNano())

	commander := &Commander{}
	robots := make([]*Robot, 50)
	for i := range robots {
		robots[i] = &Robot{}
	}

	for {
		fmt.Print("\033[H\033[2J")
		for y := 12; y >= -12; y-- {
			for x := -30; x <= 30; x++ {
				found := false
				for _, r := range robots {
					if r.x == x && r.y == y {
						found = true
						break
					}
				}
				if found {
					fmt.Print([]string{"●", "○", "✦"}[rand.Intn(3)])
				} else {
					fmt.Print(".")
				}
			}
			fmt.Println()
		}
		for _, r := range robots {
			commander.move(r)
		}
		time.Sleep(500 * time.Millisecond)
	}
}
