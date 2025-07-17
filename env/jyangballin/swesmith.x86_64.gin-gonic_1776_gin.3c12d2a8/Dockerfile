FROM golang:1.24
RUN git clone https://github.com/swesmith/gin-gonic__gin.3c12d2a8 /testbed
WORKDIR /testbed
RUN go mod tidy
RUN go test ./...
