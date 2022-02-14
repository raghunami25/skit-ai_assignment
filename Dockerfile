# Stage File
FROM golang:1.16-alpine  AS stage
WORKDIR /app
COPY . /app
RUN go mod init app
RUN go mod tidy 
RUN go mod download
COPY *.go ./
RUN go build -o /docker-golang
EXPOSE 8080
CMD [ "/docker-golang" ]


#Build File
FROM alpine:latest
WORKDIR /
COPY --from=stage /docker-golang /docker-golang-prod
EXPOSE 8080
ENTRYPOINT ["/docker-golang-prod"]