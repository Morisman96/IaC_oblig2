resource "azurerm_mssql_server" "mssql_server" {
  name                         = var.server_name
  resource_group_name          = var.rg_name
  location                     = var.location
  version                      = var.server_version
  administrator_login          = var.server_admin_login
  administrator_login_password = var.server_admin_password
}

resource "azurerm_mssql_database" "mssqpl_db" {
  name         = var.db_name
  server_id    = azurerm_mssql_server.mssql_server.id
  collation    = var.db_collation
  license_type = var.db_license_type
  max_size_gb  = var.db_max_size_gb
  sku_name     = var.db_sku_name
  enclave_type = var.db_enclave_type


  # prevent the possibility of accidental data loss
  lifecycle {
    prevent_destroy = true
  }
}