FROM golang as builder

WORKDIR /go/src/api
COPY . .
ENV GO111MODULE=on

RUN CGO_ENABLED=0 GOOS=linux go build -v -o api

FROM alpine

RUN apk add ca-certificates
COPY --from=builder /go/src/api/api /api

ENV PORT 8080

CMD ["/api"]
