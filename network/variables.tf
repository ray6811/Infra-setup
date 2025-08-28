variable "location" {
  description = "Azure region for network resources"
  type        = string
}

variable "resource_group_name" {
  description = "Resource Group name for network resources"
  type        = string
}

variable "tags" {
  description = "Tags to apply to network resources"
  type        = map(string)
  default     = {}
}