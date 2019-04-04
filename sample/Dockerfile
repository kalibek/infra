FROM golang:alpine AS build-env
COPY ./main.go /main.go
RUN  go build -o /app  /main.go

FROM alpine
COPY --from=build-env /app /app
CMD ["/app"]