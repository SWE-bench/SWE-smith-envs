FROM golang:1.24
RUN git clone https://github.com/swesmith/denisenkom__go-mssqldb.103f0369 /testbed
WORKDIR /testbed
RUN go mod tidy
RUN go test -v -count=1 ./... || true
