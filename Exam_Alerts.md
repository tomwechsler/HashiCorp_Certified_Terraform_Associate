# HashiCorp Certified Terraform Associate - EXAM ALERTS

- Terraform style conventions specifies a 2 space indent.

- Terraform supports HCL and JSON, but not plaintext files.

- Only functions that are built into HCL are supported and available, HCL does not support user-defined functions.

- "Block label name" is the Terraform Name, also known as the Terraform ID. We decide what it will be, but it is considered to be assigned by Terraform.

- Use the official HashiCorp documentation.

- Terraform apply will make changes to infrastructure on the cloud/on-premises, and to the state file.

- The state file represents a source of truth for resources provisioned with Terraform.

- The `terraform plan` command scans the code and checks for syntactical errors. However, it does not append any missing arguments or "fix" any code. A user would need to fix any errors or warnings displayed by `terraform init`, `terraform plan` or `terraform validate` before executing the code with a `terraform apply`.