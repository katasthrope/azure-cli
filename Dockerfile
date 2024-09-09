FROM mcr.microsoft.com/azure-cli:2.64.0

RUN apk add --no-cache \
    jq=1.7.1-r0 \
    git=2.45.2-r0 \
    curl=8.9.1-r1 \
    openssl=3.3.2-r0

RUN az aks install-cli

CMD ["az", "version", "&&", "kubectl", "version", "--short"]
