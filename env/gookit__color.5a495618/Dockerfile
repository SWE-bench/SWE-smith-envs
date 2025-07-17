FROM golang:1.24
RUN git clone https://github.com/swesmith/gookit__color.5a495618 /testbed
WORKDIR /testbed
RUN go mod tidy
RUN go test -v -count=1 ./... || true
