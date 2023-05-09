# Test questions

## Part 3

```
1. Terraform is written using the HashiCorp Configuration Language (HCL). What other syntax can Terraform be written in?
```
A. JSON

B. YAML

C. TypeScript

D. XML

```
2. The following is a Terraform code snippet from your Terraform configuration file:
```
    provider "aws" {

    region = "us-east-1"

    }

    provider "aws" {

    region = "us-east-2"

    }

When validated, it results in the following error:

Error: Duplicate provider configuration

on main.tf line 5:

provider "aws" {

A default provider configuration for "aws" was already given at

main.tf:1,1-15. If multiple configurations are required, set the "______"

argument for alternative configurations.

Fill in the blank in the error message with the correct string from the following list:

A. version

B. multi

C. label

D. alias

```
3. Referring to the following Terraform code, what is the local name for the resource that is defined?
```
    resource "aws_instance" "example" {

    ami = "ami-082b5a644766e6e6f"

    instance_type = "t2.micro"

    count = 2

    }

A. aws_instance

B. example

C. ami-082b5a644766e0e6f

D. t2.micro

```
4. Matt is implementing Terraform in his environment. He is looking to deploy some virtual machines with the virtual network in Azure. He has ascertained that one of his colleagues has already created a virtual network in Azure, and now he needs to create a virtual machine within that already existing virtual network. Suggest what he should use in his Terraform configuration code block:
```
A. Make use of Terraform variables for the virtual network.

B. Make use of a Terraform resource block for the virtual network.

C. Make use of a data source for the virtual network.

D. None of the above.

```
5. You have been given a Terraform configuration file and have been asked to make it dynamic and reusable. What exactly will you be using to convert static parameters?
```
A. Output values

B. Terraform input variables

C. Data sources

D. Regular expressions