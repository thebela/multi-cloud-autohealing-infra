resource "azurerm_resource_group" "rg" {
  name     = var.resource_group
  location = var.location
}

resource "azurerm_windows_virtual_machine" "vm" {
  name                = "autohealVM"
  resource_group_name = azurerm_resource_group.rg.name
  location            = var.location
  size                = "Standard_B1s"

  admin_username = "azureuser"
  admin_password = "Password@123!"

  network_interface_ids = [
    azurerm_network_interface.nic.id
  ]
}
