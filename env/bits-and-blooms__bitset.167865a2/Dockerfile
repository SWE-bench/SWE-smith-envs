FROM golang:1.24
RUN git clone https://github.com/swesmith/bits-and-blooms__bitset.167865a2 /testbed
WORKDIR /testbed
RUN go mod tidy
RUN go test -v -count=1 ./... || true
