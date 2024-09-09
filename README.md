# Azure-CLI

Azure CLI with kubectl and kubelogin to manage AKS
Also comes with some tools like jq and git

The OG `mcr.microsoft.com/azure-cli`  would be better if you only need az cli as it is more lightweight.<br>
This image is my personal preference to work with as I need to do other things in the same container like parsing json data

I couldn't get it to work with alpine base image due to some problems with python venv and sys.prefix but if you know how please open PR
