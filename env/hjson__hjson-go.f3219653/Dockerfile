FROM golang:1.24
RUN git clone https://github.com/swesmith/hjson__hjson-go.f3219653 /testbed
WORKDIR /testbed
RUN go mod tidy
RUN go test -v -count=1 ./... || true
