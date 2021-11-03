FROM golang:1.17 as builder
#Copy our file in the host contianer to our contianer
COPY . /go/src/velox/upload_to_s3
# Set working directory
WORKDIR /go/src/velox/upload_to_s3
RUN go mod download all
RUN go install github.com/swaggo/swag/cmd/swag@v1.7.2
RUN swag init
RUN CGO_ENABLED=0 GOOS=linux go build -a -installsuffix cgo .

FROM alpine:latest
RUN apk --no-cache add ca-certificates bash
RUN mkdir /app
WORKDIR /app
COPY --from=builder /go/src/velox/upload_to_s3 .

CMD ["./upload_to_s3"]
