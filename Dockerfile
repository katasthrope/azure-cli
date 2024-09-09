FROM bash:5.2.32-alpine3.20

RUN mkdir /app && \
    apk add --no-cache \
    jq=1.7.1-r0 \
    git=2.45.2-r0 \
    curl=8.9.1-r1 \
    openssl=3.3.2-r0 \
    py3-pip \
    gcc \
    musl-dev \
    python3-dev \
    libffi-dev \
    openssl-dev \
    cargo \
    make

RUN pip install --upgrade pip && \
    pip install azure-cli==2.64.0 && \
    az aks install-cli

CMD [ "bash" ]
