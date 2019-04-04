package main

import (
	"log"
	"net/http"
)

func main() {
	mux := http.NewServeMux()
	mux.HandleFunc("/", home)
	mux.HandleFunc("/health", health)
	log.Println("Starting server on port 4928")
	log.Fatal(http.ListenAndServe(":4928", mux))
}

func home(w http.ResponseWriter, r *http.Request) {
	log.Printf("requested homepage from %v\n", r.RemoteAddr)
	w.Write([]byte("This is Home Page"))
}

func health(w http.ResponseWriter, r *http.Request) {
	log.Printf("got request from %v\n", r.RemoteAddr)
	w.Write([]byte("Health is OK"))
}
