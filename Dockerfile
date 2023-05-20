FROM golang:alpine

RUN apk update && \
    apk add --no-cache git && \
    apk add --no-cache protobuf

RUN go env -w GOPROXY=https://proxy.golang.com.cn,direct
RUN go env -w GO111MODULE=on

RUN go install github.com/cosmtrek/air@latest

WORKDIR /app

COPY . .

CMD ["air", "-c", ".air/.air-docker.toml"]