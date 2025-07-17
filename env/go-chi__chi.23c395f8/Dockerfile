FROM golang:1.24
RUN git clone https://github.com/swesmith/go-chi__chi.23c395f8 /testbed
WORKDIR /testbed
RUN go mod tidy
RUN go test -v -count=1 ./... || true
