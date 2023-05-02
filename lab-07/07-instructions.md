# Lab 07 - Working with Modules
This exercise is already a bit more complex. Part of the deployment configuration files are located in a separate directory. Your task (if you accept it ;-) is to examine the configuration files. Write down for yourself which resources are deployed. What information do you get from the "outputs"?

Make sure that you are working in the following directory: lab-07. After that, simply follow the standard Terraform workflow:

```bash
terraform init
terraform fmt
terraform validate
terraform plan -out main.tfplan
terraform apply "main.tfplan"
```

You can look in the solution directory which resource is provided.

> NOTE: Be sure to destroy any infrastructure when complete.

---
## *Great work! See you at the next lab!*
---