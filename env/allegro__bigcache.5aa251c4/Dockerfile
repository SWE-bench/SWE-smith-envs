FROM golang:1.24
RUN git clone https://github.com/swesmith/allegro__bigcache.5aa251c4 /testbed
WORKDIR /testbed
RUN go mod tidy
RUN go test -v -count=1 ./... || true
