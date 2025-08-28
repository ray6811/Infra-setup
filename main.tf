provider "azurerm" {
    features {}

    subscription_id = var.subscription_id
    client_id      = var.client_id
    client_secret  = var.client_secret
    tenant_id     = var.tenant_id
}

resource "azurerm_resource_group" "main" {
    name     = var.resource_group_name
    location = var.location
}

# Network Module
module "network" {
  source              = "./network"
  location            = var.location
  resource_group_name = var.resource_group_name
}

# VM Module
module "vm" {
  source               = "./vm"
  location             = var.location
  resource_group_name  = var.resource_group_name
  network_interface_id = module.network.nic_ssh_id
}

