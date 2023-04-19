# HashiCorp Certified Terraform Associate - EXAM ALERTS

- Terraform style conventions specifies a 2 space indent.

- Terraform supports HCL and JSON, but not plaintext files.

- Only functions that are built into HCL are supported and available, HCL does not support user-defined functions.

- "Block label name" is the Terraform Name, also known as the Terraform ID. We decide what it will be, but it is considered to be assigned by Terraform.

- Use the official HashiCorp documentation.

- Terraform apply will make changes to infrastructure on the cloud/on-premises, and to the state file.

- The state file represents a source of truth for resources provisioned with Terraform.

- The `terraform plan` command scans the code and checks for syntactical errors. However, it does not append any missing arguments or "fix" any code. A user would need to fix any errors or warnings displayed by `terraform init`, `terraform plan` or `terraform validate` before executing the code with a `terraform apply`.

- On the exam, if you change an answer you have to click "answer" again to record the new answer.

- Know these commands:  
-> terraform state list  
-> terraform show  
-> terraform state show `<resource>`  
-> terraform state rm `<resource>`

- Save a TF plan , use `terraform plan -out main.tfplan` (or -out=filename).

- To replace an item/resource use `terraform apply -replace <resource>` (terraform taint is deprecated).

- Using `terraform apply -var` will take precedence over any variables in a variables.tf file.

- Terraform.tfvars houses values only, whereas variables.tf have variable declerations and values.

- Variables Precedence (highest priority first):  
-> -var and -var-file options in the CLI (with `terraform apply`)  
-> *.auto.tfvars and *.auto.tfvars.json  
-> terraform.tfvars.json  
-> terraform.tfvars  
-> environment variables  

- The terraform console is used to test Terraform's built-in functions directly within the terminal.

- Terraform has 5 logging levels: TRACE, DEBUG, INFO, WARN and ERROR (in decreasing order of verbosity).