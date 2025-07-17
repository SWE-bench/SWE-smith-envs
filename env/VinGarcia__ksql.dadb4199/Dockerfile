FROM golang:1.24
RUN git clone https://github.com/swesmith/VinGarcia__ksql.dadb4199 /testbed
WORKDIR /testbed
RUN go mod tidy
RUN go test -v -count=1 ./... || true
