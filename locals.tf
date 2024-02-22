# Define resource names
locals {
  unique_postfix = "${var.environment}-${random_pet.unique_name.id}"

  resource_group_name = "rg-avmlab-${local.unique_postfix}"
}
