package main

import (
	"fmt"
	"log"
	"net/http"
)

func main() {
	request1()
}

func homePage(response http.ResponseWriter, r *http.Request) {
	fmt.Fprintf(response, "Welcome to the HomePage!")
	fmt.Println("Endpoint Hit: homePage")
}

func aboutMe(response http.ResponseWriter, r *http.Request) {
	who := "I'm a Go developer"

	fmt.Fprintf(response, "A little bit about this go developer...")
	fmt.Println("Endpoint Hit: ", fmt.Sprint(who))
}

func request1() {
	http.HandleFunc("/", homePage)
	http.HandleFunc("/about", aboutMe)
	log.Fatal(http.ListenAndServe(":8080", nil))
}