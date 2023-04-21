locals {
  prefix = "twtf"
}

resource "azurerm_resource_group" "tfrg" {
  name     = "${local.prefix}-resources"
  location = "West Europe"
}

resource "azurerm_virtual_network" "tfvnet" {
  name                = "${local.prefix}-network"
  address_space       = ["10.0.0.0/16"]
  location            = azurerm_resource_group.tfrg.location
  resource_group_name = azurerm_resource_group.tfrg.name
}

resource "azurerm_subnet" "tfsubnet" {
  name                 = "${local.prefix}-subnet"
  resource_group_name  = azurerm_resource_group.tfrg.name
  virtual_network_name = azurerm_virtual_network.tfvnet.name
  address_prefixes     = ["10.0.1.0/24"]
}

resource "azurerm_network_interface" "tfnic" {
  name                = "${local.prefix}-nic"
  location            = azurerm_resource_group.tfrg.location
  resource_group_name = azurerm_resource_group.tfrg.name

  ip_configuration {
    name                          = "internal"
    subnet_id                     = azurerm_subnet.tfsubnet.id
    private_ip_address_allocation = "Dynamic"
    public_ip_address_id          = azurerm_public_ip.tfpip.id
  }
}

resource "azurerm_public_ip" "tfpip" {
  name                = "${local.prefix}-publicip"
  location            = azurerm_resource_group.tfrg.location
  resource_group_name = azurerm_resource_group.tfrg.name
  allocation_method   = "Dynamic"
}

resource "azurerm_linux_virtual_machine" "tfvm" {
  name                  = "${local.prefix}-vm"
  location              = azurerm_resource_group.tfrg.location
  resource_group_name   = azurerm_resource_group.tfrg.name
  network_interface_ids = [azurerm_network_interface.tfnic.id]
  size                  = "Standard_B2s"
  admin_username        = "azureuser"

  os_disk {
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }

  source_image_reference {
    publisher = "Canonical"
    offer     = "UbuntuServer"
    sku       = "18.04-LTS"
    version   = "latest"
  }

  admin_ssh_key {
    username   = "azureuser"
    public_key = file("./ssh_secrets/azure_ssh.pub")
  }

}