package main

import "fmt"

func main() {

    name, age := "programmer", 57

    fmt.Println("Hello, World!" + name + " " + fmt.Sprint(age))
}