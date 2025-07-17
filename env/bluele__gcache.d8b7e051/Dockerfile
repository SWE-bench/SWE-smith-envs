FROM golang:1.24
RUN git clone https://github.com/swesmith/bluele__gcache.d8b7e051 /testbed
WORKDIR /testbed
RUN go mod tidy
RUN go test -v -count=1 ./... || true
