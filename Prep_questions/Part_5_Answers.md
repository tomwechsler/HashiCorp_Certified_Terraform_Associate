# Test answers

## Part 5

```
1. Correct answer: B
```
Explanation: The force-unlock command is used for unlocking the state file. For more information, you can read https://www.terraform.io/docs/commands/force-unlock.html.

```
2. Correct answer: C
```
Explanation: The terraform taint command marks a Terraform managed resource as a taint and when you run apply next time, it will destroy and recreate that specific resource. For more information, head to https://www.terraform.io/docs/commands/taint.html.

```
3. Correct answer: B
```
Explanation: terraform fmt rewrites the configuration files to a canonical format and style. For information, you can read https://www.terraform.io/docs/commands/fmt.html.

```
4. Correct answer: A
```
Explanation: Using terraform import, you can bring any resources that already exist to the state file, and once you have that resource in the state file, the life cycle of that resource can be managed by Terraform.

```
5. Correct answer: A
```
Explanation: The terraform validate command will help you to check any kind of syntax error in the configuration file.