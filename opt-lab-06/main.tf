resource "azurerm_resource_group" "twrg" {
  name     = var.azure_rg_name
  location = var.azure_location

  tags = local.tags

}

# Create virtual network
resource "azurerm_virtual_network" "twvnet" {
  name                = var.virtual_network_name
  address_space       = ["10.40.0.0/16"]
  location            = azurerm_resource_group.twrg.location
  resource_group_name = azurerm_resource_group.twrg.name

  tags = local.tags

}

# Create subnet
resource "azurerm_subnet" "twsubnet" {
  name                 = var.virtual_subnet_name
  resource_group_name  = azurerm_resource_group.twrg.name
  virtual_network_name = azurerm_virtual_network.twvnet.name
  address_prefixes     = ["10.40.1.0/24"]
}