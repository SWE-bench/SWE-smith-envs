FROM golang:1.24
RUN git clone https://github.com/swesmith/couchbase__moss.bf10bab2 /testbed
WORKDIR /testbed
RUN go mod tidy
RUN go test -v -count=1 ./... || true
