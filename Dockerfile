FROM golang:1.17 AS build_base

WORKDIR /go/src/app
COPY . .

RUN go build desafio.go

FROM scratch

COPY --from=build_base /go/src/app/desafio /app/desafio

CMD ["app/desafio"]