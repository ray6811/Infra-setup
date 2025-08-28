variable "subscription_id" {
    description = "The Subscription ID for the Azure account"
    type        = string
}

variable "client_id" {
    description = "The Client ID (Application ID) for the Azure Service Principal"
    type        = string
}

variable "client_secret" {
    description = "The Client Secret for the Azure Service Principal"
    type        = string
    sensitive   = true
}

variable "tenant_id" {
    description = "The Tenant ID for the Azure account"
    type        = string
}

variable "resource_group_name" {
    description = "The Resource Group Name for the Azure resources"
    type        = string
    default     = "demo"
}

variable "location" {
    description = "The Azure region where the resources will be deployed"
    type        = string
    default     = "eastus"
}


variable "subnet_id" {
    description = "The Subnet ID for the Azure resources"
    type        = string
    default     = "azurerm_subnet.subnet.id"
}

variable "tags" {
    description = "A map of tags to assign to the resources"
    type        = map(string)
    default     = {}
}

