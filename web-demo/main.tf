resource "random_string" "random_string" {
  length = 8
  special = false 
  upper = false 
}

resource "azurerm_resource_group" "rg_web" {
  name     = var.rg_name
  location = var.location
}

resource "azurerm_storage_account" "sa_web" {
  name                     = "${var.sa_name}${random_string.random_string.result}"
  resource_group_name      = azurerm_resource_group.rg_web.name
  location                 = azurerm_resource_group.rg_web.location
  account_tier             = "Standard"
  account_replication_type = "GRS"

  static_website {
    index_document = var.index_document
  }
}
