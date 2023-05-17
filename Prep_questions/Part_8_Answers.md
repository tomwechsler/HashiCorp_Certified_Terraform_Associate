# Test answers

## Part 8

```
1. Correct answer: B
```
Explanation: We already described the Terraform style convention that each nesting level in the Terraform configuration file should have two indentation spaces. To learn more about it, you can visit https://www.terraform.io/docs/language/syntax/style.html.

```
2. Correct answer: A
```
Explanation: The default way of placing a comment in the Terraform configuration file is using #.

```
3. Correct answer: A
```
Explanation: The terraform validate command will help you to check any syntax error in the Terraform configuration file.

```
4. Correct answer: A
```
Explanation: If we want to see an output of the provisioned resources, then we should define them as an output so that we can see it at runtime itself. Option B is also quite close – no doubt we can see the name of the provisioned storage account by looking inside the state file but it is not the recommended way of doing it. And even option C is correct – if we run the terraform show command, it will display everything that is there inside the state file, but as the question is expecting to have a specific output, that is, only the storage acocunt name, that also during the runtime itself, so option C can't be considered as a correct answer.

```
5. Correct answer: C
```
Explanation: By default, Terraform will look for terraform.tfvars or any filename ending with .tfvars or .auto.tfvars for its input variable value. There's no doubt that Terraform can read input variable values from any other files, but for that, you would be required to define the filename with terraform apply. The specific syntax for providing the filename is terraform apply -var-file="filename".