#get a base image
FROM golang:1.16-alpine

WORKDIR /go/src/app
COPY ./src .

RUN go get -d -v
RUN go build -v

CMD ["./go-docker"]