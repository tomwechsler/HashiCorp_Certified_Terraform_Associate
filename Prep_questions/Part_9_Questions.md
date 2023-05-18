# Test questions

## Part 9

```
1. Which of the following is the best option for managing a large enterprise infrastructure environment using Terraform?
```
A. Data sources

B. Stacks and modules

C. Resources

D. Provisioners

```
2. Suppose you have created a Terraform stack and you can see that the indentation of the Terraform code is not in the correct format. Which of the following Terraform commands would you run?
```
A. terraform sources

B. terraform init

C. terraform fmt -recursive

D. terraform plan

```
3. Which command needs to be executed to download Terraform modules from the Github source?
```
A. terraform init

B. terraform syntax

C. terraform fmt

D. terraform plan

```
4. You created a Terraform stack containing the following code
```
    module "azure_stacks" {

      source                   = "../stacks"

      resource_group_name      = var.resource_group_name

    ...

You executed terraform plan and see that it is prompting you to provide the following values:

$ terraform plan

var.resource_group_name

  A container that holds related resources for an Azure solution

  Enter a value:

What could you have done to prevent it from prompting during runtime?

A. Defined resource_group_name variable value into any file ending with .tfvars,.auto.tfvars or.tfvars.json

B. Manually provided resource_group_name value during runtime

C. Hardcoded resource_group_name = "Terraform-test-rg"

D. Run the terraform validate command

```
5. Suppose you're consuming the module and forgot to mention the version in the module code block. What could be a major problem with not defining the version in the module code?
```
A. Terraform will always reference the latest version of the modules.

B. Terraform code may fail when we run plan or apply if previously defined module code block is not compatible with the latest version.

C.Terraform will upgrade the infrastructure as per the latest version of the modules.

D. Terraform will run terraform apply automatically