FROM golang:1.24
RUN git clone https://github.com/swesmith/HDT3213__godis.8a81b911 /testbed
WORKDIR /testbed
RUN go mod tidy
RUN go test -v -count=1 ./... || true
