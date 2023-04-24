output "resource_group_name" {
  value = azurerm_resource_group.twrg.name
}

output "public_ip_address" {
  value = azurerm_windows_virtual_machine.twvm.public_ip_address
}