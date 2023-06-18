# movie_server

Project 2 from the following
- https://www.youtube.com/watch?v=jFfo23yIWac


<br />

# gorilla/mux

Using an external package with go called gorilla/mux.

To install use:

go get "github.com/gorilla/mux"

ERROR:
" go get" is no longer supported outside a module.

SOLUTION:
1. Add a mod file:
    go mod init example.com/packages
2. Download the extra packages:
    go mod tidy


# Run

1. go build main.go

2. go run main.go

3. http://localhost:8000/movies

Other POST and GET methods can be seen by checking the API end points.