FROM ubuntu:22.04

RUN apt update && apt install -y \
    bash \
    procps \
    coreutils \
    grep \
    sed

WORKDIR /app

COPY . /app

RUN chmod +x scripts/*.sh

CMD ["bash", "scripts/monitor.sh"]
