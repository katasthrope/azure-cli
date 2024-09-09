FROM ubuntu:22.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && \
    apt-get install -y \
    curl \
    apt-transport-https \
    lsb-release

RUN curl -L https://aka.ms/InstallAzureCli | bash && \
    az aks install-cli

RUN apt-get clean && \
    rm -rf /var/lib/apt/lists/*

CMD ["az", "version"]
