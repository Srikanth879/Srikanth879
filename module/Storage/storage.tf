resource "azurerm_storage_account" "example" {
  name                     = var.name
  resource_group_name      = var.stgrg
  location                 = var.stglocation
  account_tier             = "Standard"
  account_replication_type = var.reptype

  tags = {
    environment = "Development"
    createdby   = "Srikanth"
  }
}