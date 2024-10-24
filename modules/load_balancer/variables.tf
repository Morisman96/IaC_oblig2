# Variables for Resource Group
variable "rg_name" {
  description = "Resource group name"
  type        = string
}

variable "location" {
  description = "Location of the resource group"
  type        = string
}

# Variables for public IP
variable "pub_ip_name" {
  description = "Name of the public IP"
  type        = string
}

variable "pub_ip_allocation_method" {
  description = "Allocation method of the public IP"
  type        = string
  default     = "Static"
}

# Variables for Load Balancer
variable "load_bl_name" {
  description = "Name of the Load Balancer"
  type        = string
}

variable "load_bl_front_ip_name" {
  description = "Name of the frontend IP configuration"
  type        = string
}