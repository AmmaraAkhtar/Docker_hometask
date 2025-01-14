FROM alpine:latest
RUN mkdir -p /var/c-app
WORKDIR /var/c-app
COPY . .
RUN apk update && apk add gcc musl-dev --no-cache
RUN gcc multi.c -o app       
CMD ["./app"]



