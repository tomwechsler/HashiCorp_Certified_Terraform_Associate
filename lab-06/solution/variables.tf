variable "azure_rg_name" {
  type        = string
  description = "The Azure RG Name"
  default     = "twprodrg"
}

variable "azure_location" {
  type        = string
  description = "The Azure Region"
  default     = "West Europe"
}

variable "virtual_network_name" {
  default     = "twprodvnet"
  description = "Name of the virtual network."
}

variable "virtual_subnet_name" {
  default     = "twprodsubnet"
  description = "Name of the virtual subnet."
}

variable "public_ip_name" {
  default     = "twpip2023"
  description = "Name of the pip."
}

variable "network_security_group_name" {
  default     = "twprodnsg"
  description = "Name of the NSG."
}

variable "network_nic_name" {
  default     = "twprodnic"
  description = "Name of the NIC."
}

variable "prefix" {
  type        = string
  default     = "win-iis"
  description = "Prefix of the resource name"
}