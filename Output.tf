output "resource_group" {
  value = module.resource_group.rg_name
}

output "aks_cluster" {
  value = module.aks.cluster_name
}

output "acr_login_server" {
  value = module.acr.login_server
}
