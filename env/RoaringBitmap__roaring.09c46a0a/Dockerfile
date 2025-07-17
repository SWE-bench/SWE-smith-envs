FROM golang:1.24
RUN git clone https://github.com/swesmith/RoaringBitmap__roaring.09c46a0a /testbed
WORKDIR /testbed
RUN go mod tidy
RUN go test -v -count=1 ./... || true
