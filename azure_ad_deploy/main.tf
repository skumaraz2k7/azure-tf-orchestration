provider "azurerm" {
  features = {}
}

data "azuread_client_config" "current" {}

resource "azuread_group" "adgrp" {
  display_name     = "example"
  owners           = [data.azuread_client_config.current.object_id]
  security_enabled = true  
}
