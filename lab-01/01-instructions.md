# Lab 01 - Install Terraform
Welcome to the first lab! 
In this lab you will install the Terraform CLI on to your system. 
Remember, in this course, I am demonstrating on a Debian Linux virtual machine. Of course, you can also use a Windows or macOS system. Let's go!

## Update your system (Optional). 
For example, in Debian, type: 

`apt update && apt upgrade -y`

On Fedora, type:

`dnf update -y`

Restart the system when complete.

## Install Terraform from Hashicorp:
Option #1 - Install using your package manager.
https://developer.hashicorp.com/terraform/downloads 

Locate your operating system and install Terraform following the directions. 

Option #2 - Install the binary.
https://releases.hashicorp.com/terraform 

Locate the latest version for your platform, download it, verify the checksum, unzip it, and copy it to your binaries directory (for example, /usr/local/bin).

## Verify that Terraform is installed and view the version.
`terraform version` 

or

`terraform -v`

## Install Terraform autocomplete
- First, make sure that you have an existing .bashrc or .zshrc file. 
  
  If not, create one, for example: 
    
    `touch ~/.bashrc`

- Install autocomplete: 

  `terraform -install-autocomplete`

- Restart the shell

> Note: This is very helpful for Bash, but not quite as necessary for Fish or ZSH

## Examine the help system
First, analyze the main help command:

`terraform -help`

You could also type the following options: 

`terraform --help`, `terraform -h`, or `terraform --h`

Take note of the main commands including: init, plan, validate, apply, and destroy.

Now, learn more about a subcommand. 

  For example: 
  
  `terraform -h init`

  You could also type: `terraform init -h` if you wish.

## (Optional) Install a VSCode Terraform extension
This can be done directly within VSCode or from one of the following:

- Official Hashicorp extension: 

  https://marketplace.visualstudio.com/items?itemName=HashiCorp.terraform

- Anton Kulikov extension:

  https://marketplace.visualstudio.com/items?itemName=4ops.terraform

## (Optional) Install a Vim Module
If you use Vim, you might want to consider the HashiVim Terraform module:

https://github.com/hashivim/vim-terraform

---
## *Congratulations! You just finished your first lab! GREAT WORK!*
---

