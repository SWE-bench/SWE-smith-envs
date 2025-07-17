FROM golang:1.24
RUN git clone https://github.com/swesmith/incu6us__goimports-reviser.fb560c58 /testbed
WORKDIR /testbed
RUN go mod tidy
RUN go test -v -count=1 ./... || true
