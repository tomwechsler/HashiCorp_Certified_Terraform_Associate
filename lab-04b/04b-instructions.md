# Lab 04b - Create different .tf files!
In this lab you will once again create infrastructure on Azure, but in this lab you will include a basic webserver.
However, this exercise is about distributing the contents of the main.tf file into different files. To make the configuration more flexible.. 

You will have 15 minutes. Good luck!

## Investigate the code!
Create the following files:  
-> locals.tf  
-> outputs.tf  
-> providers.tf  
-> variables.tf  

Copy the main.tf file from the fourth exercise (you can use the file from the solutions directory) to the lab-04b directory. Try to figure out which code elements could be moved into the new files you created. If you have trouble look in the solution directory.

## Take a look at the Terraform Registry
https://registry.terraform.io/

Search for the Azure provider and then in the documentation try to find out as much as possible about the resources provided with the main.tf file.

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
## So cool, part 2 of the exercise done! *Great work!*
---