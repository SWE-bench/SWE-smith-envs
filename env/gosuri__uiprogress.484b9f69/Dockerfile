FROM golang:1.24
RUN git clone https://github.com/swesmith/gosuri__uiprogress.484b9f69 /testbed
WORKDIR /testbed
RUN go mod tidy
RUN go test -v -count=1 ./... || true
