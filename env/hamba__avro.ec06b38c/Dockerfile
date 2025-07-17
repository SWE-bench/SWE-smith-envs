FROM golang:1.24
RUN git clone https://github.com/swesmith/hamba__avro.ec06b38c /testbed
WORKDIR /testbed
RUN go mod tidy
RUN go test -v -count=1 ./... || true
