module "resource_group" {
  source = "./modules/resource_group"

  rg_name  = var.rg_name
  location = var.location
}

module "network" {
  source = "./modules/network"

  rg_name  = module.resource_group.rg_name
  location = var.location
}

module "acr" {
  source = "./modules/acr"

  rg_name  = module.resource_group.rg_name
  location = var.location
  acr_name = var.acr_name
}

module "keyvault" {
  source = "./modules/keyvault"

  rg_name  = module.resource_group.rg_name
  location = var.location
}

module "mysql" {
  source = "./modules/mysql"

  rg_name  = module.resource_group.rg_name
  location = var.location
  admin    = var.mysql_admin
  password = var.mysql_password
}

module "aks" {
  source = "./modules/aks"

  rg_name   = module.resource_group.rg_name
  location  = var.location
  aks_name  = var.aks_name
  subnet_id = module.network.aks_subnet_id
}
