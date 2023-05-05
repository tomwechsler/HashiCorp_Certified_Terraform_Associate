# Example of multiple AWS providers in one .tf file.

## The first provider is shown in the normal manner.
provider "aws" {
  region = "us-west-2"
}

## The second provider uses an alias. "ohio" is the alias for "us-east-2"
provider "aws" {
  alias  = "ohio"
  region = "us-east-2"
}

## Later, resources can be created on the second provider by  
## using the alias: aws.ohio
resource "aws_instance" "test" {
  provider = aws.ohio
}