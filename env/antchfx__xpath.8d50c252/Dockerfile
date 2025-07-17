FROM golang:1.24
RUN git clone https://github.com/swesmith/antchfx__xpath.8d50c252 /testbed
WORKDIR /testbed
RUN go mod tidy
RUN go test -v -count=1 ./... || true
