FROM golang:1.24
RUN git clone https://github.com/swesmith/godror__godror.cc3b65ef /testbed
WORKDIR /testbed
RUN go mod tidy
RUN go test -v -count=1 ./... || true
