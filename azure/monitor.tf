resource "azurerm_monitor_metric_alert" "cpu_high" {
  name                = "cpu-high-alert"
  resource_group_name = azurerm_resource_group.rg.name
  scopes              = [azurerm_windows_virtual_machine.vm.id]

  criteria {
    metric_namespace = "Microsoft.Compute/virtualMachines"
    metric_name      = "Percentage CPU"
    operator         = "GreaterThan"
    threshold        = 80
    aggregation      = "Average"
  }

  action {
    action_group_id = azurerm_monitor_action_group.ag.id
  }
}
