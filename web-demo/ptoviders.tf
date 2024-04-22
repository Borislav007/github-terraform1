terraform {
  required_providers {
    azurerm = {
     source = "hashicorp/azurerm"
      version = "3.97.1"
    }
  }
  
   backend "azurerm" {
    resource_group_name  = "rg-backend01-tfstate"  
    storage_account_name = "sabetfs01iovrkgm6f2"   
    container_name       = "sacontainer"            
    key                  = "web-demo.terraform.tfstate"
  }
}

provider "azurerm" {
  features {}
}
