FROM golang:1.24
RUN git clone https://github.com/swesmith/ContentSquare__chproxy.a9364c8b /testbed
WORKDIR /testbed
RUN go mod tidy
RUN go test -v -count=1 ./... || true
