resource "random_string" "unique_name" {
  length  = 3
  special = false
  upper   = false
  numeric = false
}

module "resource_group" {
  source           = "Azure/avm-res-resources-resourcegroup/azurerm"
  version          = "0.2.1"
  location         = var.location
  name             = local.resource_names.resource_group_name
  tags             = var.tags
  enable_telemetry = var.enable_telemetry
}
