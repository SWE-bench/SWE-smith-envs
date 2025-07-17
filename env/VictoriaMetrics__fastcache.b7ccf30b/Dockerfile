FROM golang:1.24
RUN git clone https://github.com/swesmith/VictoriaMetrics__fastcache.b7ccf30b /testbed
WORKDIR /testbed
RUN go mod tidy
RUN go test -v -count=1 ./... || true
