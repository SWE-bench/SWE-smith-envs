FROM golang:1.24
RUN git clone https://github.com/swesmith/dimfeld__httptreemux.53a6a099 /testbed
WORKDIR /testbed
RUN go mod tidy
RUN go test -v -count=1 ./... || true
