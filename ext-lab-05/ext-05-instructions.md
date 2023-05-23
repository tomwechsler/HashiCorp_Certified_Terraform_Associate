# Terraform join function
Take a close look at the two files. In this deployment, three NGINX containers are deployed. The names are specified in the configuration.

The goal now is to use a "join" function to match the names with a prefix. The name should now be preceded by "dev". So for example dev-nginx1201. Please read the 
documentation of Terraform to adjust the existing configuration.

> Note: Here you can find the information about the join function: [join](https://developer.hashicorp.com/terraform/language/functions/join)

If you get stuck, look in the Solution directory.

---
## *GREAT WORK!*
---