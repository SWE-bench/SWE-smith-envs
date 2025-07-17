FROM golang:1.24
RUN git clone https://github.com/swesmith/go-zoo__bone.31c3a0bb /testbed
WORKDIR /testbed
RUN go mod tidy
RUN go test -v -count=1 ./... || true
