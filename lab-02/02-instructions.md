# Lab 02 - Setup Azure
In this lab we'll install and configure the Azure CLI. In so doing, we'll make sure that we have a proper set of Azure credentials. Enjoy!

> NOTE: This lab requires that you have an Azure Subscription. You can create one here: https://azure.microsoft.com/en-us/free/. (ATTENTION: You need a credit card, but nothing will be charged.)

> NOTE: I recommend creating a new and separate Azure user for the labs in this repository. See this link for details: https://learn.microsoft.com/en-us/azure/active-directory/fundamentals/add-users-azure-active-directory

> NOTE: The new user needs permissions so that resources can be provisioned in Azure. See this link for details: https://learn.microsoft.com/en-us/azure/role-based-access-control/role-assignments-steps

## Install the Azure CLI
For instructions on installing the Azure command line interface on your platform go to:

https://learn.microsoft.com/en-us/cli/azure/install-azure-cli

> NOTE: For Linux use: https://learn.microsoft.com/en-us/cli/azure/install-azure-cli-linux. 

> NOTE: You may need to install the curl program first.

When finished run the `az version` command to verify that the Azure CLI is installed.

## Connect to Azure with the Azure CLI
Open a terminal and issue the following command:

`az login`

or

`az login --use-device-code`

The browser starts and you can now log in with your newly created Azure user. If the browser does not start use: https://aka.ms/devicelogin
You need the device code that is displayed in the terminal.

After you have logged in you can use the following command to view the subscription.

`az account show --output table`

If multiple subscriptions are used in your tenant, you can use the following commands to select the subscription.

`az account set --subscription "xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx"`

To check

`az account list --query "[?isDefault]" --output table`

> NOTE: Make sure you are working with the right subscription.

## Authenticate Terraform to Azure with a service principal  
If you want to work with a service principal, follow this article:

https://learn.microsoft.com/en-us/azure/developer/terraform/authenticate-to-azure

> **IMPORTANT!** When you are finished with your labs, it is a best practice to delete any serivce principal that you created, and terminate any running instances in the Azure console (or other cloud provider). Finally, delete any keys or references to those keys on your local machine. 

---
## *Congratulations! You just finished another lab! YES!*
---
