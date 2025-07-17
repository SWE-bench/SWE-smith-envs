FROM golang:1.24
RUN git clone https://github.com/swesmith/bojanz__address.ec203a4f /testbed
WORKDIR /testbed
RUN go mod tidy
RUN go test -v -count=1 ./... || true
