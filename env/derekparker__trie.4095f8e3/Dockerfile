FROM golang:1.24
RUN git clone https://github.com/swesmith/derekparker__trie.4095f8e3 /testbed
WORKDIR /testbed
RUN go mod tidy
RUN go test -v -count=1 ./... || true
