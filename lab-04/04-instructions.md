# Lab 04 - Second Azure Configuration
In this lab you will once again create infrastructure on Azure, but in this lab you will include a basic webserver.
The point of this exercise is to let you find out for yourself as much as possible about what exactly is provided with the main.tf file. 
You will have 15 minutes.

## Investigate the code!
Take enough time to examine the code in the main.tf file. This is a very important lesson to get to know and understand Terraform even better. 

- Create a main.tf file for your code.  
- Copy and paste the code for the resource from the file named code.txt.
- Save your work!

> NOTE: For additional practice, if you are using VSCode, consider opening code.txt in the built-in Terminal (using the cat command or vim/nano) and type the code, line by line, in the code window. 

> NOTE: For more information on all Azure virtual machine sizes, see this link: https://learn.microsoft.com/en-us/azure/virtual-machines/sizes

## Take a look at the Terraform Registry
https://registry.terraform.io/

Search for the Azure provider and then in the documentation try to find out as much as possible about the resources provided with the main.tf file..

## Validate and create your infrastructure
Initialize, format, and validate your code. Then, create the infrastructure. Use terraform commands from memory.

> NOTE: Use the help system and your notes if you get stuck!

## Analyze the infrastructure within the Azure Portal and state file

- Verify in the Azure Portal that your virtual machine was created.
- From the output, copy the public IP address and paste it into a browser. You should see the standard website from IIS.
- View the public IP in the state file.

## Destroy the infrastructure
Using the correct command, destroy the infrastructure and verify that it has been terminated at the Azure Portal.

> !! IMPORTANT !! Practice! Spend some time at the Terraform Registry: https://registry.terraform.io/

---
## *Great work!*
---