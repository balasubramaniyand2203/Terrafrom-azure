resource "azurerm_mysql_flexible_server" "mysql" {

  name                   = "prod-mysql"
  resource_group_name    = var.rg_name
  location               = var.location

  administrator_login    = var.admin
  administrator_password = var.password

  sku_name = "B_Standard_B1ms"

  version = "8.0"

  storage_mb = 32768

}
