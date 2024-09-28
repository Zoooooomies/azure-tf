provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "test" {
  name     = "test-resource-group"
  location = "uksouth"
}

resource "azurerm_storage_account" "test" {
  name                     = "teststorageaccount"
  resource_group_name      = azurerm_resource_group.test.name
  location                 = azurerm_resource_group.test.location
  account_tier             = "Standard"
  account_replication_type = "ZRS"

  tags = {
    environment = "test"
  }
}

resource "azurerm_storage_container" "test" {
  name                  = "testcontainer"
  storage_account_name  = azurerm_storage_account.test.name
  container_access_type = "private"
}