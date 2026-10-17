# Resource group

resource "azurerm_resource_group" "main" {
  name     = "rg_network_lab_noeast"
  location = "Norway East"

  tags = {
    environment = "lab"
    managed_by  = "terraform"
  }
}

# Hub

module "hub_vnet" {
  source              = "../../modules/vnet"
  vnet_name           = "vnet-hub"
  resource_group_name = azurerm_resource_group.main.name
  location            = azurerm_resource_group.main.location
  address_space       = ["10.1.0.0/16"]
}
