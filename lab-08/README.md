# Lab-08 - Multiple Providers

This "lab" simply shows some different options for Terraform providers. This is non-functional code. 

- multi-aws-alias.tf shows how to set AWS region aliases
- multi-azurerm-aws.tf shows how to set the Azure Provider with AWS and a region
- multi-aws-linode.tf shows how to call on AWS and Linode providers, in the terraform block and in the respective provider blocks. It also shows an example of a Linode resource.
- multi-kvm-proxmox.tf shows how to call on the libvirt and Proxmox providers and their respective provider blocks.