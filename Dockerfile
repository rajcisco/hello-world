FROM debian:jessie

RUN apt-get update && apt-get install -y make nasm && rm -rf /var/lib/apt/lists/*

WORKDIR /usr/src/hello
COPY . .

RUN make clean all test

CMD ["./hello-world/hello"]
