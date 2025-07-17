FROM golang:1.24
RUN git clone https://github.com/swesmith/akrylysov__pogreb.76e9512d /testbed
WORKDIR /testbed
RUN go mod tidy
RUN go test -v -count=1 ./... || true
