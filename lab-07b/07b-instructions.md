# Lab 07b - Working with Modules
When learning about Terraform modules, we need to understand how we can draft modules for an Azure Resource Manager (azurerm) provider. This will help you out when starting to create azurerm modules and provisioning resources in Microsoft Azure using these modules. For a further understanding about Terraform modules for Azure, let's try to create a virtual machine (VM) with the keyvault module.

## Investigate

In our main.tf file, we have defined the following code block:

resource "azurerm_resource_group" "rgname" {

  name     = var.rgname

  location = var.location

  tags     = var.custom_tags

}

...

In this main.tf file, we have defined one code block named locals, as illustrated in the following code snippet:

resource "random_string" "password" {

  length      = 16

  special     = true

  min_upper   = 2

  min_lower   = 2

  min_numeric = 2

  min_special = 2

}

locals {

  vmpassword = random_string.password.result

}

Locals is just a local variable, having a map data type that contains a key and a value. It is used within the code by referencing local.key. In our example, we are storing a value of "random_string" "password" in vmpassword. So, wherever we want to reference or use this local variable in the Terraform configuration code, we can define local.vmpassword and it will automatically take the content of it.

> Now it's your turn: Examine the various configuration files!

> This whole code that we defined inside the azurerm-virtual-machine-module directory explains to you how you can create a module and get this published. In our case, we have kept the code on our "local" system so that we can create any modules accordingly and get them published. The "source" argument is mandatory, referring to either the local path where the module configuration file is located or the remote reference Uniform Resource Locator (URL) from where it should be downloaded. The same source path can be defined in multiple modules or in the same file and can be called multiple times, making modules more efficient for reuse.

Make sure that you are working in the following directory: azurerm-virtual-machine-module-use-case. After that, simply follow the standard Terraform workflow:

```bash
terraform init
terraform fmt
terraform validate
terraform plan -out main.tfplan
terraform apply "main.tfplan"
```

> What information do you get from the "outputs"?

> NOTE: Be sure to destroy any infrastructure when complete.

```bash
terraform apply -destroy -auto-approve
```

**From this lab, we managed to write a Terraform module for the Azure VM with keyvault and were easily able to consume it. In the same way, you could write a module for any other Azure resources and get it published to Terraform Cloud or any other repository from where it would be easy for you to consume it as and when needed.**

---
## *Great work! See you at the next lab!*
---