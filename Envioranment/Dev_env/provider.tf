terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.81.0"
    }
  }


  backend "azurerm" {
    resource_group_name = "Backendvenu"

    storage_account_name = "backendblockforvm"     # Can be passed via `-backend-config=`"storage_account_name=<storage account name>"` in the `init` command.
    container_name       = "vm-tfstate"            # Can be passed via `-backend-config=`"container_name=<container name>"` in the `init` command.
    key                  = "Dev.terraform.tfstate" # Can be passed via `-backend-config=`"key=<blob key name>"` in the `init` command.
  }
}

provider "azurerm" {

  features {}
}