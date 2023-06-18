package main

import "fmt"

func main() {

	messages := make(chan string) // make a channel for the go routine to send a message to

	channel2 := make(chan string)

	go func() { channel2 <- "another ping" }()

	go func() { messages <- "ping" }()

	msg := <-messages
	msg2 := <-channel2

	fmt.Println(msg)
	fmt.Println((msg2))
}
