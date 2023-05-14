# Test questions

## Part 7

```
1. Which of the following source definitions for a module is incorrect?
```
A. ../../terraform-module

B. github.com/terraform-module

C. \github.com/terraform-module

D. bitbucket.com/terraform-module

```
2. You have published an AWS Elastic Compute Cloud (EC2) instance module to the Bitbucket repository. What will happen when you run the terraform init command?
```
A. It downloads the EC2 module to the local directory.

B. It deletes the EC2 module from the repository.

C. It updates the version of the EC2 module.

D. It moves the EC2 instance module to other subdirectories.

```
3. What is the correct syntax for defining output from a module?
```
A. module.terraform-aws-vpc.vpc_id

B. terraform-aws-vpc.vpc_id

C. vpc_id

D. terraform-aws-vpc

```
4. You are working with many developers and they are all tired of writing their Terraform Infrastructure as Code (IaC). Which of the following options would you recommend to them so that they can have reusable IaC?
```
A. Terraform data sources

B. Terraform locals

C. Terraform module

D. Terraform resource

```
5. From the following defined code snippet, see if you can tell what the version of the module is:
```
    module "servers" {

      source  = "./app-cluster"

      servers = 5

    }

Which of these options is correct?

A. 5

B. No version

C. >5

D. <5