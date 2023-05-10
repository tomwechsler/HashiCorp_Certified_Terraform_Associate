# Test answers

## Part 4

```
1. Correct answer: A
```
Explanation: The Terraform support environment variable, TF_LOG, should be enabled with some trace label so that Terraform can start collecting logs and storing them in the defined path, TF_LOG_PATH. For more information, you can read the Terraform debugging page at https://www.terraform.io/docs/internals/debugging.html.

```
2. Correct answer: C
```
Explanation: Terraform has inbuilt functions and max is one of them, so the maximum value among the given number is 10. For more information about Terraform functions, you can refer to https://www.terraform.io/docs/configuration/functions.html.

```
3. Correct answer: D
```
Explanation: GitHub is not a supported backend type. For more information about Terraform backends, you can read https://www.terraform.io/docs/backends/types/index.html.

```
4. Correct answer: C
```
Explanation: Terraform provisioners can be used to run some sort of script, whether it is on a local or remote machine, but always remember that a provisioner should be used only when you don't have any other option.

```
5. Correct answer: D
```
Explanation: A dynamic expression of Terraform can help you to iterate over the inline code inside a resource code block. You can read about different Terraform iterations at https://www.hashicorp.com/blog/hashicorp-terraform-0-12-preview-for-and-for-each, https://www.terraform.io/docs/language/expressions/index.html and https://learn.hashicorp.com/tutorials/terraform/count?in=terraform/configuration-language.