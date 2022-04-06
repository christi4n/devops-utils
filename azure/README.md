# DevOps tools for Azure

## Presentation

I'd like to share the tools I'm using for Azure in seperate directories.

- Ansible
- Terraform
- To be completed...

There are services that I also use and actions I need to make to use these services. You can get a brief overview about these actions.

- Azure Vault
- To be completed...

## Provision VM in Azure with Terraform

The tf files are located in the "azure/terraform" directory. A .pem file is create after you run a "terraform apply" so you can connect easily to your VM. Please, note that it is recommended to use a bastion instead of exposing directly the VM to the outside world.

![Azure backend](https://raw.githubusercontent.com/christi4n/devops-utils/master/azure/assets/azure-terraform-provision-vm.png)

### Brief note on Azure Vault

You can create a Vault with the following command:

    az keyvault create --name "az-keyvault-name" --resource-group "your_rg_group" --location "westeurope"
