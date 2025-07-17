FROM golang:1.24
RUN git clone https://github.com/swesmith/jellydator__ttlcache.7145e12e /testbed
WORKDIR /testbed
RUN go mod tidy
RUN go test -v -count=1 ./... || true
