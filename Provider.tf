provider "azurerm" {
  features {}
}

terraform {

  required_version = ">=1.3"

  backend "azurerm" {
    resource_group_name  = "tfstate-rg"
    storage_account_name = "tfstateprod123"
    container_name       = "tfstate"
    key                  = "prod.terraform.tfstate"
  }

}
