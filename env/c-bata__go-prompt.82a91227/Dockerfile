FROM golang:1.24
RUN git clone https://github.com/swesmith/c-bata__go-prompt.82a91227 /testbed
WORKDIR /testbed
RUN go mod tidy
RUN go test -v -count=1 ./... || true
