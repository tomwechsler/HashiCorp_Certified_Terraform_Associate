# Test answers

## Part 9

```
1. Correct answer: B
```
Explanation: We already know that modules are written when we want to perform some repetition of infrastructure provisioning or updating using modules and modules can be combined together to form a stack.

```
2. Correct answer: C
```
Explanation: The terraform fmt command helps you to arrange all the Terraform IaC code into the canonical format and terraform fmt -recursive will help you to perform the formatting of all the Terraform configuration files down the line in all the directories from where you execute that command.

```
3. Correct answer: A
```
Explanation: The terraform init command helps you to download Terraform modules to the .terraform directory inside the current working directory.

```
4. Correct answer: A
```
Explanation: Input variable values can be given by defining a default value in the variable declaration file itself, by providing those values from any file ending with .tfvars, .auto.tfvars, or .tfvars.json, by providing values during the runtime, or you can set variable values in the system environment variables/path.

```
5. Correct answer: B
```
Explanation: We define versioning in the module code so that our infrastructure continues using that version and if we forget, then it will always download the latest version if we run terraform init. So to restrict the module to a specific version, we need to provide version constraints.