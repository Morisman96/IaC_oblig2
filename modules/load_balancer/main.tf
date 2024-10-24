resource "azurerm_public_ip" "pub_ip" {
  name                = var.pub_ip_name
  location            = var.location
  resource_group_name = var.rg_name
  allocation_method   = var.pub_ip_allocation_method
}

resource "azurerm_lb" "load_bl" {
  name                = var.load_bl_name
  location            = var.location
  resource_group_name = var.rg_name

  frontend_ip_configuration {
    name                 = var.load_bl_front_ip_name
    public_ip_address_id = azurerm_public_ip.pub_ip.id
  }
}