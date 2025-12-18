resource "azurerm_monitor_action_group" "ag" {
  name                = "AutoHealAG"
  resource_group_name = azurerm_resource_group.rg.name
  short_name          = "heal"
}
