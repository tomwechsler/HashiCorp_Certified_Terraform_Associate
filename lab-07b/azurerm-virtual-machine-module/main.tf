resource "azurerm_resource_group" "rgname" {
  name     = var.rgname
  location = var.location
  tags     = var.custom_tags
}

resource "azurerm_virtual_network" "vnet" {
  name                = var.vnet_name
  address_space       = var.address_space
  location            = azurerm_resource_group.rgname.location
  resource_group_name = azurerm_resource_group.rgname.name
  tags                = var.custom_tags
}

resource "azurerm_subnet" "subnet" {
  name                 = var.subnet_name
  resource_group_name  = azurerm_resource_group.rgname.name
  virtual_network_name = azurerm_virtual_network.vnet.name
  address_prefixes     = [cidrsubnet(var.address_space[0], 8, 1)]
}

resource "azurerm_network_interface" "nic" {
  name                = var.nic_name
  location            = azurerm_resource_group.rgname.location
  resource_group_name = azurerm_resource_group.rgname.name
  tags                = var.custom_tags
  ip_configuration {
    name                          = "internal"
    subnet_id                     = azurerm_subnet.subnet.id
    private_ip_address_allocation = "Dynamic"
  }
}

resource "azurerm_windows_virtual_machine" "virtual_machine" {
  name                = var.vm_name
  resource_group_name = azurerm_resource_group.rgname.name
  location            = azurerm_resource_group.rgname.location
  size                = var.vm_size
  admin_username      = var.admin_username
  admin_password      = local.vmpassword
  tags                = var.custom_tags
  network_interface_ids = [
    azurerm_network_interface.nic.id,
  ]
  os_disk {
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }

  source_image_reference {
    publisher = var.vm_publisher
    offer     = var.vm_offer
    sku       = var.vm_sku
    version   = var.vm_version
  }
  depends_on = [
    azurerm_key_vault.key_vault,
    azurerm_key_vault_secret.key_vault_secret,
  ]
}

data "azurerm_client_config" "current_config" {}

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
resource "azurerm_key_vault" "key_vault" {
  name                = var.keyvault_name
  location            = azurerm_resource_group.rgname.location
  resource_group_name = azurerm_resource_group.rgname.name
  tenant_id           = data.azurerm_client_config.current_config.tenant_id
  sku_name            = var.sku_name
  tags                = var.custom_tags
  access_policy {
    tenant_id = data.azurerm_client_config.current_config.tenant_id
    object_id = data.azurerm_client_config.current_config.object_id
    key_permissions = [
      "Create",
      "Get",
    ]
    secret_permissions = [
      "Set",
      "Get",
      "Delete",
      "Recover",
      "Purge",
    ]
  }
}
resource "azurerm_key_vault_secret" "key_vault_secret" {
  name         = var.keyvault_secret_name
  value        = local.vmpassword
  key_vault_id = azurerm_key_vault.key_vault.id
  tags         = var.custom_tags
}