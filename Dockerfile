FROM mcr.microsoft.com/azure-cli:2.64.0-cbl-mariner2.0

RUN tdnf install -y jq git curl && \
    az aks install-cli && \
    tdnf clean all && \
    tdnf clean all && \
    rm -rf /var/cache/tdnf/*

CMD ["sh", "-c", "az version && kubectl version --client"]
