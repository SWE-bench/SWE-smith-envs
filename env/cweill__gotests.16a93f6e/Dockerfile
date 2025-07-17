FROM golang:1.24
RUN git clone https://github.com/swesmith/cweill__gotests.16a93f6e /testbed
WORKDIR /testbed
RUN go mod tidy
RUN go test -v -count=1 ./... || true
