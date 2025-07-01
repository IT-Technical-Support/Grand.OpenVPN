FROM ubuntu:22.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt update && apt install -y \
    curl \
    openvpn \
    iptables \
    ca-certificates \
    openssl \
    iproute2 \
    net-tools \
    && rm -rf /var/lib/apt/lists/*

# Copy in your config and keys later if needed
CMD ["bash"]
