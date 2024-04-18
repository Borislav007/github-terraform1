terraform {
  required_providers {
    azurerm = {
     source = "hashicorp/azurerm"
      version = "3.97.1"
    }
  }
  
   backend "azurerm" {
    resource_group_name  = "rg-backend01-tfstate"  // Oppdater til riktig navn
    storage_account_name = "sabetfs01iovrkgm6f2"   // Oppdater til riktig navn
    container_name       = "sacontainer"            // Sjekk at dette er riktig
    key                  = "terraform.tfstate"      // Vanligvis uendret
  }
}

provider "azurerm" {
  features {}
}
