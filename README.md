## Deploy Web App to Azure using ARM Template With Terraform

This is a sample project to demonstrate Terraform ability to run ARM Template directly and deploy resources to Azure cloud environment. Ensure to have the following requirements before proceeding to carry out deployment:

- An active Azure account
- A Service Principal with Contributor role for Terraform (Follow this [Link](https://www.terraform.io/docs/providers/azurerm/guides/service_principal_client_secret.html) for details in creating one)
- Terraform v0.12
- Code Editor eg Visual Studio Code

When done with the above requirements, clone this repo, run `terraform init` within same directory to install and setup the Azure provider. After initialising successfully, run a terraform plan and apply.