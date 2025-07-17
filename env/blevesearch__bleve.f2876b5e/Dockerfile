FROM golang:1.24
RUN git clone https://github.com/swesmith/blevesearch__bleve.f2876b5e /testbed
WORKDIR /testbed
RUN go mod tidy
RUN go test -v -count=1 ./... || true
