package main

import "fmt"

func main() {
	// This is an anonymous function that handles the special cases for 1 and 0 bottles left over
	bottles := func(i int) string {
		switch i {
		case 0:
			return "No more bottles"
		case 1:
			return "1 bottle"
		default:
			// Returns a string with i number of bottles
			return fmt.Sprintf("%d bottles", i)
		}
	}

	// For loop that goes down from 99 to 1
	for i := 99; i > 0; i-- {
		// Prints the song, calling the anonymous function every time
		fmt.Printf("%s of beer on the wall\n", bottles(i))
		fmt.Printf("%s of beer\n", bottles(i))
		fmt.Printf("Take one down, pass it around\n")
		fmt.Printf("%s of beer on the wall\n", bottles(i-1))
	}
}