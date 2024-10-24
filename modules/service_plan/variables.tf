# Variables for Resource Group
variable "rg_name" {
  description = "Resource group name"
  type        = string
}

variable "location" {
  description = "Location of the resource group"
  type        = string
}

# Variables for Service Plan
variable "service_plan_name" {
  description = "Name of the service plan"
  type        = string
}

variable "service_plan_os_type" {
  description = "OS type of the service plan"
  type        = string
  default     = "Linux" 
}

variable "service_plan_sku_name" {
  description = "SKU name of the service plan"
  type        = string
  default     = "P1v2"
}

# Variables for Web App
variable "web_app_name" {
  description = "Name of the web app"
  type        = string
}

# Variables for Network Interface
variable "nic_name" {
  description = "Name of the network interface"
  type        = string
}

variable "nic_ip_config_name" {
  description = "Name of the IP configuration"
  type        = string
}

variable "private_ip_address_allocation" {
  description = "Private IP address allocation"
  type        = string
  default     = "Dynamic"
}