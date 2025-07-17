FROM golang:1.24
RUN git clone https://github.com/swesmith/ariga__atlas.1afaaba2 /testbed
WORKDIR /testbed
RUN go mod tidy
RUN go test -v -count=1 ./... || true
