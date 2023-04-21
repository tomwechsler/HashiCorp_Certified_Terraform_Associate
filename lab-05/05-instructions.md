# Lab 05 - Azure Config with SSH and Outputs
In this exercise we will again create a virtual machine in Azure but this time a Linux system and for this we need the SSH configuration. You'll also learn how to use outputs to have Terraform tell you information you need to know, such as the IP address.

# Procedure
This lab is a bit more in-depth, so go slow, and take it step-by-step. This time we'll be using a Ubuntu image. If you get stuck, view the solution in the /solution directory. 

## Create a directory structure
Create a new directory: ssh_secrets.
For example: `mkdir ssh_secrets`
- Your main.tf file will go into lab-05 directory. This is the directory where you will run your Terraform commands.
- Your SSH keys will be placed in the ssh_secrets directory.

## Create an SSH key pair
You will need openssh or another SSH tool installed. 
- Run the command `ssh-keygen` to create an SSH RSA key pair.

> NOTE: Remember the passphrase, you will need it later.

> NOTE: Azure does not support ED25519 so we use RSA.

- Name the key "azure_ssh" and save the key to the "ssh_secrets" directory. (You can also specify the path and key name with the `-f` option of the ssh-keygen command.)

> NOTE: The solution does not have a key pair, you will have to take care of that part!

## Build your Terraform files
- Make the following files within the lab-05 directory:

  - provider.tf
  - main.tf
  - outputs.tf

- In provider.tf, use the standard provider block code that you have used previously.
- Copy the code from code-main.txt to your main.tf file. Analyze this file. Find the block named <admin_ssh_key> and add your SSH public key where it says <public_key>
- Find the block named locals and replace the <prefix> with your own Prefix-Name. But don't use too long prefix, so that the names generated with this prefix don't become too long.
- Copy the code from code-outputs.txt to your outputs.tf file. Analyze this file. What information will Terraform supply you with when the terraform apply is complete? 

## Initialize, validate, and apply your Terraform configuration
- Your working Terraform directory is lab-05. 
- Use the commands you have learned to initialize, format, validate, plan, and finally, apply your configuration. 
- What information was outputted to you in the terminal?

> After deployment, use `terraform refresh` to get the public IP address!!

> NOTE: If you lose the outputted information just type `terraform output` to see it again!

- Once the infrastructure has been built, view it within your Azure Portal.

## SSH into your new virtual machine.
Using the information that was outputted, SSH into your instance.

For example, you might do something similar to this:
`ssh -i "./ssh_secrets/azure_ssh" azureuser@<ip_address>`

> NOTE: Make sure that you specify your private key when establishing the connection. If you specified a passphrase when you created the key pair, you need it now..

Make sure that you can access the system. Run commands on the remote system such as:
`cat /etc/os-release`
and
`systemctl status apache2`
(The second command should result in an error because apache2 is not installed.)

When done, exit out of the SSH session.

## Destroy the infrastructure
Use the appropriate command to destroy the infrastructure. 

---
## **You are great, another exercise ready!!!**
---








