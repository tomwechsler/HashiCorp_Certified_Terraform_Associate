# Test answers

## Part 7

```
1. Correct answer: C
```
Explanation: The Terraform module supports a local, private, or public registry. The source URL should be defined correctly. For more information, you can read https://www.terraform.io/docs/modules/sources.html.

```
2. Correct answer: A
```
Explanation: When we run terraform init, it downloads files to the local directory and stores them inside the .terraform folder.

```
3. Correct answer: A
```
Explanation: When we want to get output from the module, then we need to define module."modulename"."outputname".

```
4. Correct answer: C
```
Explanation: The Terraform module is the best option if you are working with many developers – it will be easy to write a module and use it again and again.

```
5. Correct answer: B
```
Explanation: The Terraform module has a local source path that doesn't support any versioning; it always takes the latest version.