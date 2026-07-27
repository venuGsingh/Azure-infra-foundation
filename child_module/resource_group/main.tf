variable "venu_rg"{}


resource "azurerm_resource_group" "manish_rg" {
  for_each = var.venu_rg

  name     = each.value.name
  location = each.value.location
}

