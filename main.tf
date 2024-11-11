resource "azurerm_storage_account" "sa" {
  #name                     = "storage${random_string.random.result}"
  name                     = var.storage_account_name
  resource_group_name      = var.resource_group_name
  location                 = var.resource_group_location
  account_tier             = "Standard"
  account_replication_type = "LRS"

}

resource "azurerm_storage_account_static_website" "static_website" {
  storage_account_id = azurerm_storage_account.sa.id
  error_404_document = "error.html"
  index_document     = "index.html"
}
