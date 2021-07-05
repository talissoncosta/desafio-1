FROM golang:1.16.0-stretch

WORKDIR /go/src
ENV PATH="/go/bin:${PATH}"
ENV GOOS=linux


COPY . .
RUN go build -o main .

EXPOSE 8000

CMD ["./main"]