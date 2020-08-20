FROM golang:1.12.0-alpine3.9
## We create an /app directory within our
## image that will hold our application source
## files
RUN mkdir /app
ADD . /app
WORKDIR /app

RUN go mod download

RUN go build -o main .
CMD ["/app/main"]