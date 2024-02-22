resource "random_pet" "unique_name" {
  length    = 2
  separator = "-"
}

resource "azurerm_resource_group" "this" {
  name     = local.resource_group_name
  location = var.location
  tags     = var.tags
}
