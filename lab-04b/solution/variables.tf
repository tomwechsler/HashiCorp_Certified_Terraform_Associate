variable "azure_rg_name" {
  type        = string
  description = "The Azure RG Name"
  default     = "terra-prod-rg"
}

variable "azure_location" {
  type        = string
  description = "The Azure Region"
  default     = "West Europe"
}

variable "virtual_network_name" {
  default     = "terraprodvnet"
  description = "Name of the virtual network."
}

variable "virtual_subnet_name" {
  default     = "terraprodsubnet"
  description = "Name of the virtual subnet."
}

variable "public_ip_name" {
  default     = "terrapip2023"
  description = "Name of the pip."
}

variable "network_security_group_name" {
  default     = "terraprodnsg"
  description = "Name of the NSG."
}

variable "network_nic_name" {
  default     = "terraprodnic"
  description = "Name of the NIC."
}

variable "prefix" {
  type        = string
  default     = "win-iis"
  description = "Prefix of the resource name"
}