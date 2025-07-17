FROM golang:1.24
RUN git clone https://github.com/swesmith/antonmedv__fx.1ab8a99b /testbed
WORKDIR /testbed
RUN go mod tidy
RUN go test -v -count=1 ./... || true
