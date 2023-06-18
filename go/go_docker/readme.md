# Go - Docker

The Video: https://www.youtube.com/watch?v=USbPCBi_d4U

The Github: https://github.com/AdminTurnedDevOps/GoWebAPI


# How to run

1. Add a mod file:
    go mod init example.com/packages

2. Download the extra packages:
    go mod tidy


3. docker build -t godocker .

4. docker run -p 8080:8080 -tid godocker