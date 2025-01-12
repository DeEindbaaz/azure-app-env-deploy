# Azure App Environment Deployment

This project contains an Azure Bicep template and an Azure Pipeline configuration to deploy a virtual network, network security group, key vault, storage account, and static site to Azure.

## Project Structure


- `azure-pipelines.yml`: Azure Pipeline configuration file to deploy the Bicep template.
- `main.bicep`: Bicep template defining the Azure resources to be deployed.
- `README.md`: Project documentation.

## Prerequisites

- Azure subscription
- Azure CLI installed
- Azure DevOps account

## Deployment

### Azure Pipeline

The Azure Pipeline defined in `azure-pipelines.yml` performs the following steps:

1. Checks if the resource group `MyResourceGroup` exists.
2. Creates the resource group if it does not exist.
3. Deploys the `main.bicep` template to the resource group.

### Running the Pipeline

1. Commit and push your changes to the `main` branch.
2. The pipeline will trigger automatically and deploy the resources defined in `main.bicep`.

### Bicep Template

The `main.bicep` template deploys the following resources:

- Virtual Network
- Network Security Group
- Key Vault
- Storage Account
- Static Site

## Parameters

The `main.bicep` template includes the following parameters:

- `location`: The location where the resources will be deployed. Default is `westeurope`.

## Contributing

Contributions are welcome! Please open an issue or submit a pull request.

## License

This project is licensed under the MIT License.
