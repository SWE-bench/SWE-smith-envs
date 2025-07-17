FROM golang:1.24
RUN git clone https://github.com/swesmith/doug-martin__goqu.21b6e6d1 /testbed
WORKDIR /testbed
RUN go mod tidy
RUN go test -v -count=1 ./... || true
