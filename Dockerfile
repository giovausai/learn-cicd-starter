FROM --platform=linux/amd64 debian:stable-slim

RUN apt-get update && apt-get install -y ca-certificates

RUN apt-get update && apt-get install -y apt-utils

RUN apt-get install -y curl nano

WORKDIR /app

ADD notely /app/notely

ADD .env /app/.env

EXPOSE 8080

CMD ["/app/notely"]
