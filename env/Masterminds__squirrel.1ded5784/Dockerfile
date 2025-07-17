FROM golang:1.24
RUN git clone https://github.com/swesmith/Masterminds__squirrel.1ded5784 /testbed
WORKDIR /testbed
RUN go mod tidy
RUN go test -v -count=1 ./... || true
