# The Solution

This Terraform code will create the following resources:

* An Azure Virtual Network to be used as the hub network
* A subnet for an Azure Firewall
* A subnet for the domain controller
* A subnet for the a host pool
* A subnet for the bastion host
* An Azure Virtual Machine with ADDS installed and configured