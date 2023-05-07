# To Create Resource Group
resource "azurerm_resource_group" "example" {
  count    = 3
  name     = "Terraform-rg${count.index}"
  location = "westeurope"
}
