output "nic_ssh_id" {
  description = "ID of the SSH network interface created by the network module"
  value       = azurerm_network_interface.nic_ssh.id
}