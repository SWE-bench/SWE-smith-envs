FROM golang:1.24
RUN git clone https://github.com/swesmith/golang__groupcache.2c02b820 /testbed
WORKDIR /testbed
RUN go mod tidy
RUN go test -v -count=1 ./... || true
