FROM golang:1.22.2 AS build
WORKDIR /app
COPY . .    
RUN CGO_ENABLED=0 GOOS=linux GOARCH=amd64 go build -o server

FROM scratch
WORKDIR /app
COPY --from=build /app/server .
ENTRYPOINT [ "./server" ]

## docker run --rm -p 8080:8080 luizalvesr/gitopslar:latest
## docker run --rm -p 8080:8080 luizalvesr/gitopslarv2:latest 
## sudo docker push luizalvesr/gitopslar:latest