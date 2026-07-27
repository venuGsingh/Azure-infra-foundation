variable "venu_subnet" {}

resource "azurerm_subnet" "venu_subnet" {
    for_each = var.venu_subnet
  name                 = each.value.name
  resource_group_name  = each.value.resource_group_name
  virtual_network_name = each.value.virtual_network_name
  address_prefixes     = each.value.address_prefixes

}