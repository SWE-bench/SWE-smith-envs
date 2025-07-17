FROM golang:1.24
RUN git clone https://github.com/swesmith/go-critic__go-critic.db2ec6f4 /testbed
WORKDIR /testbed
RUN go mod tidy
RUN go test -v -count=1 ./... || true
