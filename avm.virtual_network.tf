module "virtual_network" {
  source  = "Azure/avm-res-network-virtualnetwork/azurerm"
  version = "~> 0.1"

  resource_group_name           = azurerm_resource_group.this.name
  vnet_location                 = var.location
  vnet_name                     = local.virtual_network_name
  subnets                       = local.subnets
  virtual_network_address_space = [local.virtual_network_address_space]
  enable_telemetry              = false
}
