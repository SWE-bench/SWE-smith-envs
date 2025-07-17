FROM golang:1.24
RUN git clone https://github.com/swesmith/arp242__goatcounter.854b1dd2 /testbed
WORKDIR /testbed
RUN go mod tidy
RUN go test -v -count=1 ./... || true
