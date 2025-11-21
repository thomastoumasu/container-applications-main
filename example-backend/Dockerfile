# simplest version
# FROM golang:1.16
# WORKDIR /usr/src/app
# COPY . .
# RUN go build
# RUN go test ./...
# ENV PORT=80
# # ENV PORT=8080
# # ENV REQUEST_ORIGIN=http://localhost:3000
# # better: write env in Compose so do not need to build a new image if the value changes
# CMD ["./server"]

# in-between version for Ex 3.17 https://courses.mooc.fi/org/uh-cs/courses/devops-with-docker/chapter-4/optimizing-the-image-size 
# FROM seekwe/golang-gcc:1.16
# WORKDIR /usr/src/app
# RUN addgroup --system backendgroup && adduser --system backenduser --ingroup backendgroup
# COPY --chown=backenduser . .
# RUN go build && go test ./... && \
#   rm -rf cache common controller go.mod go.sum pgconnection router
# ENV PORT=80
# # ENV PORT=8080
# # ENV REQUEST_ORIGIN=http://localhost:3000
# # better: write env in Compose so do not need to build a new image if the value changes
# USER backenduser
# CMD ["./server"]

FROM golang:1.16-alpine AS build-stage
# FROM golang:1.22.5-alpine as build-stage
RUN addgroup --system backendgroup && adduser --system backenduser --ingroup backendgroup
WORKDIR /usr/src/app
COPY  . .
ENV CGO_ENABLED=0
RUN go build -ldflags="-s -w" && go test ./...

FROM scratch
COPY --from=build-stage /etc/passwd /etc/passwd
WORKDIR /usr/src/app
COPY --from=build-stage /usr/src/app/server .
ENV PORT=80
USER backenduser
CMD ["./server"]

# docker build -t backend . && docker run --name backend --rm -p 8080:80 -e REQUEST_ORIGIN=http://localhost:3000 backend