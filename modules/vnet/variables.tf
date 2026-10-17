variable "vnet_name" {
  type        = string
  description = "The name of the Virtual Network."
}

variable "location" {
  type        = string
  description = "The Azure Region where the VNet will be created."
}

variable "resource_group_name" {
  type        = string
  description = "The name of the Resource Group in which to create the VNet."
}

variable "address_space" {
  type        = list(string)
  description = "The address space used by the VNet (e.g., ['10.0.0.0/16'])."
}

variable "dns_servers" {
  type        = list(string)
  description = "List of IP addresses of custom DNS servers."
  default     = []
}

variable "subnets" {
  type = map(object({
    address_prefixes = list(string)
  }))
  description = "A map of subnets to create within the VNet."
  default     = {}
}

variable "tags" {
  type        = map(string)
  description = "A map of tags to assign to the resource."
  default     = {}
}
