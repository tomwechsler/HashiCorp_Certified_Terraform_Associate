# Test questions

## Part 6

```
1. Which of the following actions are performed during a terraform init operation?
```
A. Initializes downloaded or installed providers

B. Downloads the declared provider

C. Provisions the declared resources

D. Initializes the backend config

```
2. What can the terraform plan command do?
```
A. Provision declared resources

B. Perform initialization of the backend

C. Create an execution plan and determine which changes need to be made to achieve the desired state in the configuration file

D. Perform linting on the Terraform configuration file

    You have defined the following configuration code block:

    resource "azurerm_resource_group" "example" {

      name     = var.rgname

      location = "eastus"

    }

```
3. In which possible ways can Terraform take the rgname variable value?
```
A. By creating a terraform.tfvars file and placing it into rgname="Terraform-lab-rg"

B. By running terraform apply -var 'rgname=Terraform-lab-rg'

C. By running terraform plan

D. By running terraform apply -var-file="example.txt"

    You are getting an error like this while executing the terraform apply command:

    resource "azurerm_resource_group" "example" {

      name     = "Terraform-lab-RG"

      location = "eastus"

      terraform_location = "eastus"

    }

    Error: Unsupported argument

      on resourcegroup.tf line 4, in resource "azurerm_resource_group" "example":

       4:   terraform_location = "eastus"

    An argument named "terraform_location" is not expected here.

```
4. Which command could you have run to check such an error in advance?
```
A. terraform init

B. terraform validate

C. terraform plan

D. terraform apply

```
5. Your team has created an AWS infrastructure using Terraform, and now they want to get rid of that infrastructure. Which command could you run to do this?
```
A. terraform validate

B. terraform plan

C. terraform destroy

D. terraform init