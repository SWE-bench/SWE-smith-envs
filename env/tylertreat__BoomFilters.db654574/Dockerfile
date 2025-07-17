FROM golang:1.24
RUN git clone https://github.com/swesmith/tylertreat__BoomFilters.db654574 /testbed
WORKDIR /testbed
RUN go mod init github.com/tylertreat/BoomFilters
RUN go mod tidy
