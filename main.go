package main

import "net/http"

func main() {
	http.HandleFunc("/", func(w http.ResponseWriter, r *http.Request) {
		w.Write([]byte("<h1>Hello Luiz Alves Rodrigues, a perseverança é a melhor amiga da aprendizagem</h1>"))
	})
	http.ListenAndServe(":8080", nil)
}
