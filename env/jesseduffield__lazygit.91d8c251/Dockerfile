FROM golang:1.24
RUN git clone https://github.com/swesmith/jesseduffield__lazygit.91d8c251 /testbed
WORKDIR /testbed
RUN go mod tidy
RUN go test -v -count=1 ./... || true
