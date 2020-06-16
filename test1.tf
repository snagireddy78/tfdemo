provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "demo1" {
  name     = "testrg1azure"
  location = "eastus"
  tags = {
      env = "testrg1azure-demo"
  }
}
resource "azurerm_resource_group" "demo2" {
  name     = "testrg2azure"
  location = "southindia"

}

terraform {
    backend "azurerm" {
        resource_group_name ="tfrgtrainer"
        storage_account_name = "tfstoragesudha"
        container_name = "con1"
        key = "terraform.tfstate"
    }
}
