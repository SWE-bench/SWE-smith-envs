FROM golang:1.24
RUN git clone https://github.com/swesmith/deckarep__golang-set.9480c3eb /testbed
WORKDIR /testbed
RUN go mod tidy
RUN go test -v -count=1 ./... || true
