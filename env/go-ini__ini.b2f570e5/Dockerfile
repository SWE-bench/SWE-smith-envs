FROM golang:1.24
RUN git clone https://github.com/swesmith/go-ini__ini.b2f570e5 /testbed
WORKDIR /testbed
RUN go mod init github.com/go-ini/ini
RUN go mod tidy
