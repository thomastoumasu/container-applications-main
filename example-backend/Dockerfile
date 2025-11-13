FROM golang:1.16
WORKDIR /usr/src/app
COPY . .
RUN go build
RUN go test ./...
ENV PORT=80
# ENV PORT=8080
# ENV REQUEST_ORIGIN=http://localhost:3000
# better: write env in Compose so do not need to build a new image if the value changes
CMD ["./server"]

# docker build -t backend . && docker run --name backend --rm -p 8080:80 -e REQUEST_ORIGIN=http://localhost:3000 backend