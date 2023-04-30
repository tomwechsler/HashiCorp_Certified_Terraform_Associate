# Opt-02: (Optional) Best Practice for Credentials
This optional lab goes over some best practices when working with Terraform.

## Don't use credentials within the main terraform files
For example, in the provider block of a main.tf file you can specify an AWS access key and secret key as shown below. This is known as "hard-coding" the credentials. 

```
provider "aws" {
  access_key = "<AWS_ACCESS_KEY>"
  secret_key = "<AWS_SECRET_KEY>"
  region     = "us-east-2"
```

However, this makes the secret key visible to anyone who has access to the terraform directory, and will be impossible to omit from version control. So, this is a bad practice, especially in collaborative environments. 

**AVOID HARD-CODING!**

Terraform supports a number of different methods for authenticating to Azure, it is recommended to do one of the following:

- Authenticating to Azure using the Azure CLI
- Authenticating to Azure using Managed Service Identity
- Authenticating to Azure using a Service Principal and a Client Certificate
- Authenticating to Azure using a Service Principal and a Client Secret
- Authenticating to Azure using a Service Principal and OpenID Connect

> More info: https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs

- Create a terraform.tfvars file to house the credentials. This file will be called upon by a variable in a separate .tf file. However, it is VERY IMPORTANT that you do not check terraform.tfvars into source control. Be sure to put terraform.tfvars in the .gitignore file. This method can be helpful if you don't want database usernames/passwords to be written to the state file.

> More info: https://developer.hashicorp.com/terraform/tutorials/configuration-language/sensitive-variables

- !!! **RECOMMENDED** Use another secrets-providing tool such as HashiCorp's Vault. This is the recommended option so that an entire team can call on secrets, but they are encrypted and stored securely. 

> Note: This is recommended over the .tfvars solution because it can be easy to forget to add .tfvars files to the .gitignore file.

- Use other third-party cloud provided options for securely calling upon credentials.

---
## *Secure your secrets!!*
---