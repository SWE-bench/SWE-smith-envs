FROM golang:1.24
RUN git clone https://github.com/swesmith/emirpasic__gods.1d83d5ae /testbed
WORKDIR /testbed
RUN go mod tidy
RUN go test -v -count=1 ./... || true
