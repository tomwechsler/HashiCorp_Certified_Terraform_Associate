# Terraform count
Let's understand how we can use count parameters. For a better understanding, we have the following Terraform code block, which will help us to create a resource group in Azure:

````
# To Create Resource Group

resource "azurerm_resource_group" "example" {

  name     = "Terraform-rg"

  location = "West Europe"

}
````

Now, let's suppose that you want to create three resource groups in Azure. Then, how would you achieve this requirement? You might be planning to use a traditional loop approach that you might have seen in other programming languages, but Terraform doesn't support that approach:

````
# This pseudo code will not work in Terraform.

for (i = 0; i < 3; i++) {

resource "azurerm_resource_group" "example" {

  name     = "Terraform-rg"

  location = "West Europe"

}

}
````

As you know, this previously defined code block will not work in Terraform. Now, the question is, how do we define this loop in Terraform? You can use the count parameter to create three resource groups in Azure. The following code snippet will be able to perform that job for us:

````
# To Create Resource Group

resource "azurerm_resource_group" "example" {

  count = 3

  name     = "Terraform-rg"

  location = "West Europe"

}
````

There is one problem in the previously defined code: the name of the resource group in Azure should be unique. You can use count.index to make the name of the resource group unique. The following code snippet will give you an idea of how to define count and count.index:

````
# To Create Resource Group

resource "azurerm_resource_group" "example" {

  count = 3

  name     = "Terraform-rg${count.index}"

  location = "West Europe"

}
````

Now run `terraform init`

Now run `terraform fmt`

Now run `terraform validate`

Now run `terraform plan -out main.tfplan`

Now run `terraform apply "main.tfplan"`

> How many resource groups have been created?

> Don't forget the cleanup!

Now run `terraform destroy`