FROM golang:1.24
RUN git clone https://github.com/swesmith/charmbracelet__bubbletea.ca9473b2 /testbed
WORKDIR /testbed
RUN go mod tidy
RUN go test -v -count=1 ./... || true
