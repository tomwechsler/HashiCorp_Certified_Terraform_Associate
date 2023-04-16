# Lab 03 - First Configuration (Azure)
In this lab you will create a resource group in Azure. You will need an Azure Subscription. It's recommended to create a new Azure user that you can test with during these labs. Let's go!

## Procedure

- Copy and paste the code from code.txt into a new file named main.tf.

> NOTE: Change the Azure region to best suit your location. A list of regions can be found here: https://azure.microsoft.com/en-us/explore/global-infrastructure/geographies/#overview

- Adjust the formatting of the code with the `terraform fmt` command.
- Initialize the working directory with the `terraform init` command.
  - Notice that a directory (.terraform) and a file (.terraform.lock.hcl) have been created automatically after issuing this command.
- Validate and verify the configuration with commands:

  `terraform validate`

  `terraform plan`

- Create the infastructure with the `terraform apply` command.
- Verify the infrastructure at the Azure portal.
- Analyze the "state" file. This is called "terraform.tfstate".
- Destroy the infrastructure with the `terraform destroy` command.
- Analyze the "state" file once more and identify the changes. Notice that a new file named "terraform.tfstate.backup" has been created. Analyze that as well.

> NOTE: Remember to destroy them when you are finished testing so that you don't get charged anymore than necessary. Most of these labs should result in a minimal charge, or no charge if run properly. However, this exercise will not generate any costs in Azure!

> NOTE: You might also be interested in linting programs such as TFlint: 
https://github.com/terraform-linters/tflint

---
## *Fantastic! Another lab... DONE!!*
---