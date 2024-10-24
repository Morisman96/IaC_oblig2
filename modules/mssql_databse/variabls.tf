# Variables for Resource Group
variable "rg_name" {
  description = "Resource group name"
  type        = string
}

variable "location" {
  description = "Location of the resource group"
  type        = string
}

# Variables for SQL Server
variable "server_name" {
  description = "Name of the SQL server"
    type        = string 
  
}

variable "server_version" {
  description = "Version of the SQL server"
    type        = string 
    default = "12.0"
}

variable "server_admin_login" {
  description = "Admin login of the SQL server"
    type        = string    
}

variable "server_admin_password" {
  description = "Admin password of the SQL server"
    type        = string    
    sensitive = true
}

# Variables for SQL Database
variable "db_name" {
  description = "Name of the database"
    type        = string 
}

variable "db_collation" {
  description = "Collation of the database"
    type        = string 
    default = "SQL_Latin1_General_CP1_CI_AS"
}

variable "db_license_type" {
  description = "License type of the database"
    type        = string 
    default = "LicenseIncluded"
  }

variable "db_max_size_gb" {
  description = "Max size in gigabytes of the database"
    type        = number 
    default = 2 
}

variable "db_sku_name" {
  description = "SKU name of the database"
    type        = string 
    default = "S0"
  
}

variable "db_enclave_type" {
  description = "Enclave type of the database"
    type        = string 
    default = "VBS"
  
}


