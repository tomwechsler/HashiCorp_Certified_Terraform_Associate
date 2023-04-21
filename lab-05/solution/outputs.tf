output "public_ip_addresses" {
  value       = azurerm_public_ip.tfpip.ip_address
  description = "Public IP address of the virtual machine"
}