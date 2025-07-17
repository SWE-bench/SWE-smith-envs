FROM golang:1.24
RUN git clone https://github.com/swesmith/junegunn__fzf.976001e4 /testbed
WORKDIR /testbed
RUN go mod tidy
RUN go test -v -count=1 ./... || true
