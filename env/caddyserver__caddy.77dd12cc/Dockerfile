FROM golang:1.24
RUN git clone https://github.com/swesmith/caddyserver__caddy.77dd12cc /testbed
WORKDIR /testbed
RUN go mod tidy
RUN go test -v -count=1 ./... || true
