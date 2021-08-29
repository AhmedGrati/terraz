output "webapp_url" {
  value       = azurerm_app_service.karpully.default_site_hostname
}
output "webapp_ips"{
  value       = azurerm_app_service.karpully.outbound_ip_addresses
}

