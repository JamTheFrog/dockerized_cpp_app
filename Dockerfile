FROM alpine:latest

RUN apk add --no-cache gcc g++ libc-dev

WORKDIR /usr/src/app

COPY main.cpp .

RUN g++ -o app main.cpp

CMD ["./app"]
