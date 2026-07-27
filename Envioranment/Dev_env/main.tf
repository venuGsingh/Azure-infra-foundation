module "resource_group" {
  source  = "../../child_module/resource_group"
  venu_rg = var.Venu_rg
}

module "Vnet" {
  depends_on = [module.resource_group]
  source     = "../../child_module/Vnet"
  venu_vnet  = var.venu_vnet
}
module "subnet" {
  depends_on  = [module.Vnet]
  source      = "../../child_module/subnet"
  venu_subnet = var.venu_subnet
}
module "public_ip" {
  depends_on     = [module.subnet]
  source         = "../../child_module/public_ip"
  venu_public_ip = var.venu_public_ip
}

module "nic" {
  depends_on  = [module.public_ip]
  source      = "../../child_module/VM_Nic_card"
  venu_VM_nic = var.venu_VM_nic
}
