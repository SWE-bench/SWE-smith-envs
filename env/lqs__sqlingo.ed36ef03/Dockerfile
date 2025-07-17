FROM golang:1.24
RUN git clone https://github.com/swesmith/lqs__sqlingo.ed36ef03 /testbed
WORKDIR /testbed
RUN go mod init github.com/lqs/sqlingo
RUN go mod tidy
