FROM golang:1.24
RUN git clone https://github.com/swesmith/go-gota__gota.f7054095 /testbed
WORKDIR /testbed
RUN go mod tidy
RUN go test -v -count=1 ./... || true
