FROM ubuntu:20.04

RUN apt-get update && \
    apt-get install -y curl git && \
    apt-get install -y build-essential libssl-dev && \
    curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | bash -s -- -y && \
    git clone https://github.com/iot2tangle/Streams-http-gateway.git && \
    apt-get -y remove curl git && \
    apt-get -y purge && apt-get -y clean && apt-get -y autoremove

ENV PATH="/root/.cargo/env:$PATH"

WORKDIR "/Streams-http-gateway"

EXPOSE 8080

ENTRYPOINT ["/root/.cargo/bin/cargo", "run", "--release"]