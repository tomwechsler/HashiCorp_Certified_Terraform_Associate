# Lab 06 - Working with Variables
Here you will define elements of your configuration using variables instead of hard-coding them into the main terraform file.

## Procedure - Part 1
- Open the lab-06 directory. (This will be your working directory.)
- Create a new file named main.tf and copy the contents from the code-main.txt file into it.
- Create a new file named locals.tf and copy the contents from the code-locals.txt file into it.
- Analyze the main.tf file. In this example, there are two variables. One is used for the Azure location and the other is used as a prefix for naming Azure resources. 
- Create some new files called variables.tf, outputs.tf and providers.tf.
- In this exercise, try again to create the outputs.tf and providers.tf files with the "correct" elements from the main.tf file. I know is a repetition, but practice makes perfect.
- Next, examine remaining elements in the main.tf file. Now try to determine what information could be specified in the variables.tf file to reference it from the main.tf file.
- Also remove the two default variables in the main.tf file and "move" them to the variables.tf file. 
- Try to include as much information as possible in the different variables. For example:
  `Name = var.network_nic_name`
- If you get stuck, look in the "solution" directory.
- Initialize, validate and apply the infrastructure.
- Check the name of the NIC in the Azure Portal. It should display the name you chose in variables.tf.

## Procedure - Part 2
- Re-apply the infrastructure with a new name using the variable option in the command line. For example:

  `terraform apply -var "network_nic_name=newname"`

This overwrites the variable value from the variables.tf file.
- Verify the new name in the Azure Portal and state file.

> NOTE: Be sure to destroy any infrastructure when complete.

> NOTE: Do not forget the variables precedence [Variables Precedence](https://github.com/tomwechsler/HashiCorp_Certified_Terraform_Associate/blob/main/Exam_Alerts.md)

## Procedure - Part 3
- Change (whichever) two default values in your variables.tf file. 
- Apply the infrastructure.
- Check in the Azure Portal whether your customizations have been applied.

> NOTE: Be sure to destroy any infrastructure when complete.

---
## *Great work! See you at the next lab!*
---

