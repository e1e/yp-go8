FROM golang:1.24.1

WORKDIR /app

COPY . .

RUN go mod tidy

RUN go mod download

RUN CGO_ENABLED=0 GOOS=linux GOARCH=amd64 go build -o /yp-go-parcel

CMD ["/yp-go-parcel"]