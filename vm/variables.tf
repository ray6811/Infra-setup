variable "location" {
  description = "Azure region for VM resources"
  type        = string
}

variable "resource_group_name" {
  description = "Resource Group name where VM will be created"
  type        = string
}

variable "tags" {
  description = "Tags to apply to VM resources"
  type        = map(string)
  default     = {}
}

variable "network_interface_id" {
  description = "The ID of an existing network interface to attach to the VM"
  type        = string
}

variable "admin_username" {
  description = "Admin username for the VM"
  type        = string
  default     = "azureuser"
}

variable "admin_password" {
  description = "Password for VM admin user"
  type        = string
  sensitive   = true
  default     = "Admin@123456"
}